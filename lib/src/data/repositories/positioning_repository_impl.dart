//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
// import '../../core/timer_notifier.dart';
import '../../core/restart_timer.dart';
import '../../domain/entities/positioning_data.dart';
import '../../domain/entities/positioning_message.dart';
import '../../domain/repositories/positioning_repository.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/positioning_data_message_model.dart';

class PositioningRepositoryImpl extends PositioningRepository {
  static double width = 1280;
  static double height = 800;
  static double maxDistance = Platform.isIOS ? 0 : -15;
  static double minDistance = Platform.isIOS ? 40 : 35;
  grpc.SkyleClient? client;
  ResponseStream<grpc.PositioningMessage>? _stream;

  PositioningRepositoryImpl({this.client});

  @override
  Stream<DataState<PositioningMessage>> start() async* {
    yield* _generateStream().timeout(const Duration(milliseconds: 1200), onTimeout: (sink) {
      sink.add(DataSuccess(PositioningDistanceMessage(distance: PositioningDistance.none)));
    });
  }

  Stream<DataState<PositioningMessage>> _generateStream() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.positioning(Empty());
      await for (final grpc.PositioningMessage event in _stream!) {
        final grpc.PositioningMessage positioningMessage = grpc.PositioningMessage()..mergeFromJson(event.writeToJson());
        if (positioningMessage.hasLeftEye() || positioningMessage.hasRightEye()) {
          yield DataSuccess(PositioningDataMessageModel.fromPositioningMessage(positioningMessage));
        }
        if (positioningMessage.hasQualityDepth()) {
          yield DataSuccess(
            PositioningDistanceMessage(
                distance: positioningMessage.qualityDepth < maxDistance
                    ? PositioningDistance.far
                    : positioningMessage.qualityDepth > minDistance
                        ? PositioningDistance.close
                        : PositioningDistance.normal),
          );
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
