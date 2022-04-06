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
import '../models/point_model.dart';

class GazeRepositoryImpl implements GazeRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.Point>? _stream;

  Timer? _timer;

  GazeRepositoryImpl({this.client});

  @override
  Stream<DataState<Point>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.gaze(Empty());
      final stream = _stream!.timeout(const Duration(seconds: 5), onTimeout: (sink) {
        sink.addError(TimeoutException());
      });
      await for (final grpc.Point event in stream) {
        yield DataSuccess(Point(x: event.x, y: event.y));
      }
    } on StillStreamingException catch (_) {
    } on NotConnectedException catch (_) {
    } on TimeoutException catch (_) {
      _stream = null;
      yield const DataFailed('Timeout');
    } catch (error) {
      _stream = null;
      yield DataFailed(error.toString());
    }
  }

  @override
  Future<void> stop() async {
    _timer?.cancel();
    await _stream?.cancel();
    _stream = null;
  }
}
