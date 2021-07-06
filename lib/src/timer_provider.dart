//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerProvider extends ChangeNotifier {
  bool _fired = false;
  bool get fired => _fired;
  Timer? _timer;

  bool _disposed = false;

  void _startTimer({Duration duration = const Duration(milliseconds: 1200), void Function(bool)? onFired}) {
    _timer = Timer(duration, () async {
      if (_disposed) return;
      _fired = true;
      notifyListeners();
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

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  TimerProvider();

  factory TimerProvider.start({Duration duration = const Duration(milliseconds: 1200), void Function(bool)? onFired}) {
    return TimerProvider().._startTimer(duration: duration, onFired: onFired);
  }

  int _value = 0;
  int get value => _value;

  void _steppedFired(bool fired, int steps, Duration duration) {
    final _steps = steps - 1;
    _value += duration.inMilliseconds;
    notifyListeners();
    if (_steps > 0) {
      restartTimer(duration: duration, onFired: (fired) => _steppedFired(fired, _steps, duration));
    }
  }

  factory TimerProvider.stepped({int steps = 1, Duration duration = const Duration(milliseconds: 1200)}) {
    final timerProvider = TimerProvider();
    timerProvider._startTimer(duration: duration, onFired: (fired) => timerProvider._steppedFired(fired, steps, duration));
    return timerProvider;
  }
}
