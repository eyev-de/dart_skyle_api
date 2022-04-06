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
import '../../core/timer_notifier.dart';
import '../../domain/entities/positioning_data.dart';
import '../../domain/entities/positioning_message.dart';
import '../../domain/repositories/positioning_repository.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/positioning_model.dart';

class PositioningRepositoryImpl extends PositioningRepository {
  static double width = 1280;
  static double height = 800;
  static double maxDistance = Platform.isIOS ? 0 : -15;
  static double minDistance = Platform.isIOS ? 40 : 35;
  grpc.SkyleClient? client;
  ResponseStream<grpc.PositioningMessage>? _stream;
  final _timerNotifier = TimerNotifier();
  Timer? _timer;

  PositioningRepositoryImpl({this.client});

  @override
  Stream<DataState<PositioningMessage>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.positioning(Empty());
      final stream = _stream!.timeout(const Duration(seconds: 5), onTimeout: (sink) {
        sink.addError(TimeoutException());
      });
      await for (final grpc.PositioningMessage event in stream) {
        final grpc.PositioningMessage positioningMessage = grpc.PositioningMessage()..mergeFromJson(event.writeToJson());
        if ((positioningMessage.hasLeftEye() || positioningMessage.hasRightEye()) /*&& !_timerNotifier.fired*/) {
          // if (_state != PositioningDistance.normal) {
          //   _state = PositioningDistance.normal;
          // }

          // _timerNotifier.restartTimer(onFired: (fired) {
          //   if (_state != PositioningDistance.none) {
          //     _state = PositioningDistance.none;
          // yield DataSuccess(PositioningDistanceMessage(distance: PositioningDistance.none));
          //   }
          // });
          yield DataSuccess(PositioningModel.fromPositioningMessage(positioningMessage));
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
