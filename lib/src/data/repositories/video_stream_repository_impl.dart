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
        if (message is List<int>) {
          yield DataSuccess(message);
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
    VideoStreamRepository.parse(receivePort).listen((message) {
      sendPort.send(message);
    });
  }
}
