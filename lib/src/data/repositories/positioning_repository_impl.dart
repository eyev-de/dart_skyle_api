//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/positioning_repository.dart';
import '../../generated/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/positioning/positioning_eyes.dart';
import '../models/positioning/positioning_message.dart';

class PositioningRepositoryImpl extends PositioningRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.PositioningMessage>? _stream;

  PositioningRepositoryImpl({this.client});

  @override
  Stream<DataState<PositioningMessage>> start() async* {
    yield* _generateStream().timeout(const Duration(milliseconds: 1200), onTimeout: (sink) {
      sink.add(const DataSuccess(PositioningMessage()));
    });
  }

  Stream<DataState<PositioningMessage>> _generateStream() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.positioning(Empty());
      var previousPositioningMessage = const PositioningMessage();
      await for (final grpc.PositioningMessage event in _stream!) {
        final grpc.PositioningMessage positioningMessage = grpc.PositioningMessage()..mergeFromJson(event.writeToJson());
        // final grpc.PositioningMessage positioningMessage = grpc.PositioningMessage()..mergeFromProto3Json(event.writeToJson());
        if (positioningMessage.hasLeftEye() || positioningMessage.hasRightEye()) {
          var message = PositioningMessage.fromPositioningMessage(positioningMessage);
          if (message.eyes.left.isZero() && !previousPositioningMessage.eyes.left.isZero()) {
            message = message.copyWith(eyes: PositioningEyes(left: previousPositioningMessage.eyes.left, right: message.eyes.right));
          }
          if (message.eyes.right.isZero() && !previousPositioningMessage.eyes.right.isZero()) {
            message = message.copyWith(eyes: PositioningEyes(right: previousPositioningMessage.eyes.right, left: message.eyes.left));
          }
          yield DataSuccess(message);
          previousPositioningMessage = message;
        }
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
