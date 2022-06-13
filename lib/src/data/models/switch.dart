//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import '../../generated/Skyle.proto/Skyle.pb.dart';

class SwitchActions {
  final String singleClick;
  final String doubleClick;
  final String holdClick;
  SwitchActions({
    required this.singleClick,
    required this.doubleClick,
    required this.holdClick,
  });
  factory SwitchActions.create() {
    return SwitchActions(
      singleClick: 'Tap',
      doubleClick: 'Context',
      holdClick: 'Scroll',
    );
  }
  SwitchActions.fromJson(Map<String, dynamic> json)
      : singleClick = json['singleClick'],
        doubleClick = json['doubleClick'],
        holdClick = json['holdClick'];

  Map<String, dynamic> toJson() => {
        'singleClick': singleClick,
        'doubleClick': doubleClick,
        'holdClick': holdClick,
      };

  factory SwitchActions.fromButtonActions(ButtonActions buttonActions) {
    return SwitchActions(
      singleClick: buttonActions.singleClick,
      doubleClick: buttonActions.doubleClick,
      holdClick: buttonActions.holdClick,
    );
  }

  static ButtonActions toButtonActions(SwitchActions actions) {
    return ButtonActions(
      singleClick: actions.singleClick,
      doubleClick: actions.doubleClick,
      holdClick: actions.holdClick,
    );
  }
}

class Switch {
  final bool isPresent;
  final SwitchActions actions;
  final List<String> availableActions;
  Switch({
    required this.isPresent,
    required this.actions,
    required this.availableActions,
  });
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
  Switch.fromJson(Map<String, dynamic> json)
      : isPresent = json['isPresent'],
        actions = jsonDecode(json['actions']),
        availableActions = json['availableActions'];

  Map<String, dynamic> toJson() => {
        'isPresent': isPresent,
        'actions': jsonEncode(actions),
        'availableActions': availableActions,
      };

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
