//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/switch.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart';

class SwitchActionsModel extends SwitchActions {
  SwitchActionsModel({
    required String singleClick,
    required String doubleClick,
    required String holdClick,
  }) : super(
          singleClick: singleClick,
          doubleClick: doubleClick,
          holdClick: holdClick,
        );
  factory SwitchActionsModel.fromButtonActions(ButtonActions buttonActions) {
    return SwitchActionsModel(
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

class SwitchModel extends Switch {
  SwitchModel({
    required bool isPresent,
    required SwitchActions actions,
    required List<String> availableActions,
  }) : super(
          isPresent: isPresent,
          actions: actions,
          availableActions: availableActions,
        );

  factory SwitchModel.fromButton(Button button) {
    return SwitchModel(
      isPresent: button.isPresent,
      actions: SwitchActionsModel.fromButtonActions(button.buttonActions),
      availableActions: button.availableActions,
    );
  }
  static Button toButton(Switch s) {
    return Button(
      isPresent: s.isPresent,
      buttonActions: SwitchActionsModel.toButtonActions(s.actions),
      availableActions: s.availableActions,
    );
  }
}
