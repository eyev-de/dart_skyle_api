//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:isolate';

import '../../core/data_state.dart';

abstract class VideoStreamRepository {
  static const _trigger = 0xFF;
  static const _soi = 0xD8;
  static const _eoi = 0xD9;

  bool running = false;

  /// Reqests a stream of images in form of a [List] of [int], encapsuled in [DataState].
  ///
  /// The [url] parameter shall look like so: `http://localhost:8080`. The [headers] parameter
  /// is optional and is not needed.
  Stream<DataState<List<int>>> request({required String url, Map<String, String>? headers});

  /// Canceles the request stream but lets the parsing isolate running.
  Future<void> cancel();

  /// The parsing logic for parsing a jpeg image from a multipart get.
  ///
  /// The [inputStream] parameter should contain [List] of [int] but is [dynamic]
  /// due to the [ReceivePort] being a [Stream] of [dynamic] elements.
  static Stream<List<int>> parse(Stream<dynamic> inputStream) async* {
    List<int> chunks = [];
    await for (final List<int> data in inputStream) {
      if (chunks.isEmpty) {
        final startIndex = data.indexOf(_trigger);
        if (startIndex >= 0 && startIndex + 1 < data.length && data[startIndex + 1] == _soi) {
          final slicedData = data.sublist(startIndex, data.length);
          chunks.addAll(slicedData);
          yield chunks;
          chunks = [];
        }
      } else {
        final startIndex = data.lastIndexOf(_trigger);
        if (startIndex + 1 < data.length && data[startIndex + 1] == _eoi) {
          final slicedData = data.sublist(0, startIndex + 2);
          chunks.addAll(slicedData);
          yield chunks;
          chunks = [];
        } else {
          chunks.addAll(data);
        }
      }
    }
  }
}
