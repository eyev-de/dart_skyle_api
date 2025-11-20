//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.pb.dart';

part 'switch_actions.freezed.dart';
part 'switch_actions.g.dart';

@freezed
sealed class SwitchActions with _$SwitchActions {
  const factory SwitchActions({
    required String singleClick,
    required String doubleClick,
    required String holdClick,
  }) = _SwitchActions;

  factory SwitchActions.fromJson(Map<String, Object?> json) => _$SwitchActionsFromJson(json);

  factory SwitchActions.create() {
    return const SwitchActions(
      singleClick: 'Tap',
      doubleClick: 'Context',
      holdClick: 'Scroll',
    );
  }

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
