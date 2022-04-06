//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerNotifier {
  bool _fired = false;
  bool get fired => _fired;
  Timer? _timer;

  bool _disposed = false;

  void _startTimer({required Duration duration, void Function(bool)? onFired}) {
    _timer = Timer(duration, () async {
      if (_disposed) return;
      _fired = true;
      if (onFired != null) onFired(true);
      await Future.delayed(const Duration(milliseconds: 50));
      // ignore: invariant_booleans
      if (_disposed) return;
      _fired = false;
    });
  }

  void restartTimer({Duration duration = const Duration(milliseconds: 1200), void Function(bool)? onFired}) {
    _timer?.cancel();
    _startTimer(duration: duration, onFired: onFired);
  }

  void dispose() {
    _disposed = true;
  }

  TimerNotifier();

  factory TimerNotifier.start({Duration duration = const Duration(milliseconds: 1200), void Function(bool)? onFired}) {
    return TimerNotifier().._startTimer(duration: duration, onFired: onFired);
  }

  int _value = 0;
  int get value => _value;

  void _steppedFired(bool fired, int steps, Duration duration) {
    final _steps = steps - 1;
    _value += duration.inMilliseconds;
    if (_steps > 0) {
      restartTimer(duration: duration, onFired: (fired) => _steppedFired(fired, _steps, duration));
    }
  }

  factory TimerNotifier.stepped({int steps = 1, Duration duration = const Duration(milliseconds: 1200)}) {
    final timerProvider = TimerNotifier();
    timerProvider._startTimer(duration: duration, onFired: (fired) => timerProvider._steppedFired(fired, steps, duration));
    return timerProvider;
  }
}
