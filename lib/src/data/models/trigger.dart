//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../generated/Skyle.pbgrpc.dart' as grpc;

enum Trigger {
  singelClick,
  doubleClick,
  holdClick,
  fixation;

  static Trigger fromTriggerMessage(grpc.TriggerMessage message) {
    if (message.hasSingleClick()) return Trigger.singelClick;
    if (message.hasDoubleClick()) return Trigger.doubleClick;
    if (message.hasHoldClick()) return Trigger.holdClick;
    if (message.hasFixation()) return Trigger.fixation;
    return Trigger.singelClick;
  }
}
