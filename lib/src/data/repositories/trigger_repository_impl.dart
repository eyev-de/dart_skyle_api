//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc_or_grpcweb.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/trigger_repository.dart';
import '../../generated/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/trigger.dart';

class TriggerRepositoryImpl implements TriggerRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.TriggerMessage>? _stream;

  TriggerRepositoryImpl({this.client});

  @override
  Stream<DataState<Trigger>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.trigger(Empty());
      await for (final grpc.TriggerMessage event in _stream!) {
        yield DataSuccess(Trigger.fromTriggerMessage(event));
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
