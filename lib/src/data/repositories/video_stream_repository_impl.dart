//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:http/http.dart';

import '../../core/data_state.dart';
import '../../domain/repositories/video_stream_repository.dart';
import '../../et.dart';

class VideoStreamRepositoryImpl implements VideoStreamRepository {
  static const _trigger = 0xFF;
  static const _soi = 0xD8;
  static const _eoi = 0xD9;

  final Client _httpClient = Client();

  StreamSubscription? _subscription;
  Isolate? _isolate;
  ReceivePort? _port;
  SendPort? _sendPort;

  VideoStreamRepositoryImpl();

  @override
  bool running = false;

  @override
  Future<void> startParsingIsolate() async {
    if (running) return;
    running = true;
    _port = ReceivePort();
    _isolate = await Isolate.spawn(_parse, _port!.sendPort);
  }

  @override
  Future<void> stopParsingIsolate() async {
    if (!running) return;
    try {
      await cancel();
      _isolate?.kill(priority: Isolate.immediate);
      _port?.close();
      _isolate = null;
      _port = null;
    } catch (error) {
      ET.logger?.e('Error stopping parsing isolate.', error, StackTrace.current);
    }
  }

  @override
  Stream<DataState<List<int>>> request({required String url, Map<String, String>? headers}) async* {
    try {
      if (!running) await startParsingIsolate();
      await for (final message in _port!.asBroadcastStream()) {
        if (message is DataSuccess<List<int>>) {
          // final imageMemory = MemoryImage(Uint8List.fromList(message.data));
          // await precacheImage(imageMemory, context);
          // if (!_disposed) state.update(imageMemory, null);
          yield message;
        } else if (message is SendPort) {
          _sendPort = message;
          final request = Request('GET', Uri.parse(url));
          request.headers.addAll(headers ?? <String, String>{});
          final response = await _httpClient.send(request).timeout(const Duration(seconds: 5));

          if (response.statusCode >= 200 && response.statusCode < 300) {
            _subscription = response.stream.listen((data) async {
              _sendPort?.send(data);
            }, onError: (error) async {
              ET.logger?.e('Error in mjpeg stream.', error, StackTrace.current);
              await cancel();
            }, cancelOnError: true);
          } else {
            ET.logger?.e('Error in mjpeg stream.', HttpException('Stream returned ${response.statusCode} status'), StackTrace.current);
            yield DataFailed('Stream returned ${response.statusCode} status and is canceled.');
            await cancel();
          }
        } else if (message is DataFailed) {
          ET.logger?.e(message.error, null, StackTrace.current);
          yield DataFailed(message.error!);
        }
      }
    } catch (error) {
      ET.logger?.e('Error in mjpeg stream.', error, StackTrace.current);
      yield const DataFailed('Stream failed.');
    }
  }

  @override
  Future<void> cancel() async {
    try {
      await _subscription?.cancel();
      _subscription = null;
      _httpClient.close();
    } catch (error) {
      ET.logger?.e('Error canceling mjpeg stream request.', error, StackTrace.current);
    }
  }

  static Future<void> _parse(SendPort sendPort) async {
    final ReceivePort receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    var chunks = <int>[];
    await for (final List<int> data in receivePort) {
      if (chunks.isEmpty) {
        final startIndex = data.indexOf(_trigger);
        if (startIndex >= 0 && startIndex + 1 < data.length && data[startIndex + 1] == _soi) {
          final slicedData = data.sublist(startIndex, data.length);
          chunks.addAll(slicedData);
        }
      } else {
        final startIndex = data.lastIndexOf(_trigger);
        if (startIndex + 1 < data.length && data[startIndex + 1] == _eoi) {
          final slicedData = data.sublist(0, startIndex + 2);
          chunks.addAll(slicedData);
          try {
            sendPort.send(DataSuccess(chunks));
          } catch (error) {
            ET.logger?.e('Error in mjpeg stream.', error, StackTrace.current);
            sendPort.send(DataFailed(error.toString()));
          }
          chunks = <int>[];
        } else {
          chunks.addAll(data);
        }
      }
    }
  }
}
