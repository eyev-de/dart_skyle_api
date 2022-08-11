//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum IPadModel {
  iPadPro12_9,
  iPadAir2022;

  static IPadModel fromIPadOptionsIPadModel(IPadOptions_iPadModel iPadModel) {
    switch (iPadModel) {
      case IPadOptions_iPadModel.iPadPro12_9:
        return IPadModel.iPadPro12_9;
      case IPadOptions_iPadModel.iPadAir2022:
        return IPadModel.iPadAir2022;
    }
    return IPadModel.iPadPro12_9;
  }

  IPadOptions_iPadModel toIPadOptionsIPadModel() {
    switch (this) {
      case IPadModel.iPadPro12_9:
        return IPadOptions_iPadModel.iPadPro12_9;
      case IPadModel.iPadAir2022:
        return IPadOptions_iPadModel.iPadAir2022;
    }
  }
}
