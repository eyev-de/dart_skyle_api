//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/entities/point.dart';
import '../../domain/repositories/gaze_repository.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';

class GazeRepositoryImpl implements GazeRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.Point>? _stream;

  GazeRepositoryImpl({this.client});

  @override
  Stream<DataState<Point>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.gaze(Empty());
      await for (final grpc.Point event in _stream!) {
        yield DataSuccess(Point(x: event.x, y: event.y));
      }
    } on StillStreamingException catch (_) {
    } on NotConnectedException catch (_) {
    } catch (error) {
      _stream = null;
      yield DataFailed(error.toString());
    }
  }

  @override
  Future<void> stop() async {
    await _stream?.cancel();
    _stream = null;
  }
}
