//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../data/models/switch/switch.dart';
import '../../data/models/switch/switch_actions.dart';
import '../../domain/repositories/switch_repository.dart';
import '../../generated/Skyle.pbgrpc.dart';
import '../../generated/google/protobuf/empty.pb.dart';

class SwitchRepositoryImpl implements SwitchRepository {
  SkyleClient? client;
  SwitchRepositoryImpl({this.client});
  StreamController<DataState<Switch>>? controller;
  Timer? timer;

  @override
  Future<DataState<SwitchActions>> setSwitch(SwitchActions switchActions) async {
    try {
      if (client == null) throw NotConnectedException();
      final ButtonActions buttonActions = await client!.setButton(ButtonActions(
        singleClick: switchActions.singleClick,
        doubleClick: switchActions.doubleClick,
        holdClick: switchActions.holdClick,
      ));

      return DataSuccess(SwitchActions.fromButtonActions(buttonActions));
    } catch (error) {
      return DataFailed(error.toString());
    }
  }

  @override
  Stream<DataState<Switch>> start() {
    if (client == null) throw NotConnectedException();
    if (controller != null || timer != null) throw StillStreamingException();

    controller = StreamController<DataState<Switch>>();
    final Stopwatch watch = Stopwatch();
    controller?.onListen = () {
      Future<void> sendEvent(_) async {
        watch.reset();
        try {
          final button = await client!.getButton(Empty());
          controller?.add(DataSuccess(Switch.fromButton(button)));
        } catch (e, s) {
          controller?.addError(e, s);
          return;
        }
      }

      const period = Duration(milliseconds: 500);
      timer = Timer.periodic(period, sendEvent);
      controller
        ?..onCancel = () {
          timer?.cancel();
        }
        ..onPause = () {
          watch.stop();
          timer?.cancel();
        }
        ..onResume = () {
          final Duration elapsed = watch.elapsed;
          watch.start();
          timer = Timer(period - elapsed, () {
            timer = Timer.periodic(period, sendEvent);
            sendEvent(null);
          });
        };
    };
    return controller!.stream;
  }

  @override
  void stop() {
    timer?.cancel();
    controller?.close();
    timer = null;
    controller = null;
  }
}
