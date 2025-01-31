//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc_or_grpcweb.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/raw_gaze_repository.dart';
import '../../generated/google/protobuf/empty.pb.dart';
import '../../generated/Skyle.pbgrpc.dart' as grpc;
import '../models/types.dart';

class RawGazeRepositoryImpl implements RawGazeRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.BinocularGaze>? _stream;

  RawGazeRepositoryImpl({this.client});

  @override
  Stream<DataState<BinocularGaze>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.rawBinocularGaze(Empty());
      await for (final grpc.BinocularGaze event in _stream!) {
        yield DataSuccess(BinocularGaze.fromBinocularGaze(event));
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
