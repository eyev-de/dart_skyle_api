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
    List<int> _carry = [];
    await for (final List<int> chunk in inputStream) {
      if (_carry.isNotEmpty && _carry.last == _trigger) {
        if (chunk.first == _eoi) {
          _carry.add(chunk.first);
          yield _carry;
          _carry = [];
        }
      }
      for (var i = 0; i < chunk.length - 1; i++) {
        final d = chunk[i];
        final d1 = chunk[i + 1];

        if (d == _trigger && d1 == _soi) {
          _carry.add(d);
        } else if (d == _trigger && d1 == _eoi && _carry.isNotEmpty) {
          _carry
            ..add(d)
            ..add(d1);
          yield _carry;
          _carry = [];
        } else if (_carry.isNotEmpty) {
          _carry.add(d);
          if (i == chunk.length - 2) {
            _carry.add(d1);
          }
        }
      }
    }
  }
}
