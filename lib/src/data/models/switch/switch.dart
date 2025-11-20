//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.pb.dart';
import 'switch_actions.dart';

part 'switch.freezed.dart';
part 'switch.g.dart';

@freezed
sealed class Switch with _$Switch {
  const factory Switch({
    required bool isPresent,
    required SwitchActions actions,
    required List<String> availableActions,
  }) = _Switch;

  factory Switch.fromJson(Map<String, Object?> json) => _$SwitchFromJson(json);

  factory Switch.create({
    bool isPresent = false,
    SwitchActions? actions,
    List<String> availableActions = const [
      'None',
      'Tap',
      'Context',
      'Scroll',
      'Calibrate',
    ],
  }) {
    return Switch(
      isPresent: isPresent,
      actions: actions ?? SwitchActions.create(),
      availableActions: availableActions,
    );
  }

  factory Switch.fromButton(Button button) {
    return Switch(
      isPresent: button.isPresent,
      actions: SwitchActions.fromButtonActions(button.buttonActions),
      availableActions: button.availableActions,
    );
  }

  static Button toButton(Switch s) {
    return Button(
      isPresent: s.isPresent,
      buttonActions: SwitchActions.toButtonActions(s.actions),
      availableActions: s.availableActions,
    );
  }
}
