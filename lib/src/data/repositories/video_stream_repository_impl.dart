//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

import '../../../api.dart';

class VideoStreamRepositoryImpl implements VideoStreamRepository {
  // http.Client _httpClient = http.Client();

  StreamSubscription? _subscription;
  Isolate? _isolate;
  ReceivePort? _port;
  SendPort? _sendPort;

  VideoStreamRepositoryImpl();

  @override
  bool running = false;

  /// Starts the parsing isolate. This is also called on [request].
  ///
  /// This isolate is receiving a [Stream] of [List] of [int] and converting it
  /// to a different [Stream] of [List] of [int] containing only the image data
  /// which can be used to display an image in flutter by doing the following:
  /// ```dart
  /// final memoryImage = MemoryImage(Uint8List.fromList(streamedImageData));
  /// ```
  /// The parsing logic lives in [VideoStreamRepository.parse].
  Future<void> _startParsingIsolate() async {
    if (running) return;
    running = true;
    _port = ReceivePort();
    _isolate = await Isolate.spawn(_parse, _port!.sendPort);
  }

  /// Stops the parsing isolate to shutdown the whole video streaming process.
  Future<void> _stopParsingIsolate() async {
    try {
      _isolate?.kill(priority: Isolate.immediate);
      _port?.close();
      _isolate = null;
      _port = null;
      _sendPort = null;
      running = false;
    } catch (error) {
      ET.logger?.e('Error stopping parsing isolate.', error: error, stackTrace: StackTrace.current);
    }
  }

  @override
  Stream<DataState<List<int>>> request({required String url, Map<String, String>? headers}) async* {
    try {
      if (running) throw StillRunningException();
      await _startParsingIsolate();
      await for (final message in _port!) {
        if (message is List<int>) {
          yield DataSuccess(message);
        } else if (message is SendPort) {
          _sendPort = message;
          // final request = http.Request('GET', Uri.parse(url));
          // _httpClient = http.Client();
          // final response = await _httpClient.send(request).timeout(const Duration(seconds: 5));
          const r = RetryOptions(
            maxAttempts: 7,
            delayFactor: Duration(milliseconds: 100),
            maxDelay: Duration(seconds: 10),
          );
          final response = await r.retry(
            () {
              // _httpClient.close();
              final httpClient = http.Client();
              final request = http.Request('GET', Uri.parse(url));
              request.headers.addAll(headers ?? <String, String>{});
              return httpClient.send(request).timeout(const Duration(seconds: 5));
            },
            retryIf: (e) => e is SocketException || e is TimeoutException,
            onRetry: (e) {
              print(e);
            },
          );

          if (response.statusCode >= 200 && response.statusCode < 300) {
            _subscription = response.stream.listen((data) async {
              _sendPort?.send(data);
            }, onError: (error) async {
              ET.logger?.e('Error in mjpeg stream.', error: error, stackTrace: StackTrace.current);
              await cancel();
            }, cancelOnError: true);
          } else {
            ET.logger?.e('Error in mjpeg stream.', error: Exception('Stream returned ${response.statusCode} status'), stackTrace: StackTrace.current);
            await cancel();
            yield DataFailed('Stream returned ${response.statusCode} status and is canceled.');
          }
        }
      }
    } catch (error) {
      ET.logger?.e('Error in mjpeg stream.', error: error, stackTrace: StackTrace.current);
      yield const DataFailed('Stream failed.');
    }
  }

  @override
  Future<void> cancel() async {
    try {
      if (!running) throw NotRunningException();
      await _subscription?.cancel();
      _subscription = null;
      // _httpClient.close();
      await _stopParsingIsolate();
    } catch (error) {
      ET.logger?.e('Error canceling mjpeg stream request.', error: error, stackTrace: StackTrace.current);
    }
  }

  static Future<void> _parse(SendPort sendPort) async {
    final ReceivePort receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    VideoStreamRepository.parse(receivePort).listen(sendPort.send);
  }
}
