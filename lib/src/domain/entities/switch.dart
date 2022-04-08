//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

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
  @override
  String toString() {
    return 'actions: {\n    singleClick:\t$singleClick\n    doubleClick:\t$doubleClick\n    holdClick:  \t$holdClick\n}';
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
  @override
  String toString() {
    return 'isPresent:\t\t$isPresent\n${actions.toString()}\navailableActions:\t$availableActions\n';
  }
}
