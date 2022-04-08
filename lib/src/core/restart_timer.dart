//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

class RestartTimer {
  bool _fired = false;
  bool get fired => _fired;
  Timer? _timer;

  bool _disposed = false;

  void _startTimer({required Duration duration, void Function(bool)? onFired}) {
    _timer = Timer(duration, () async {
      if (_disposed) return;
      _fired = true;
      onFired?.call(true);
      await Future.delayed(const Duration(milliseconds: 50));
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

  RestartTimer();

  factory RestartTimer.start({Duration duration = const Duration(milliseconds: 1200), void Function(bool)? onFired}) {
    return RestartTimer().._startTimer(duration: duration, onFired: onFired);
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

  factory RestartTimer.stepped({int steps = 1, Duration duration = const Duration(milliseconds: 1200)}) {
    final timerProvider = RestartTimer();
    timerProvider._startTimer(duration: duration, onFired: (fired) => timerProvider._steppedFired(fired, steps, duration));
    return timerProvider;
  }
}
