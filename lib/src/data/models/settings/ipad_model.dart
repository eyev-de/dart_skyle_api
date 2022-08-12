//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum IPadModel {
  iPad8_5, //iPad Pro (12.9-inch) (3rd generation)
  iPad8_6, //iPad Pro (12.9-inch) (3rd generation)
  iPad8_7, //iPad Pro (12.9-inch) (3rd generation)
  iPad8_8, //iPad Pro (12.9-inch) (3rd generation)
  iPad8_11, //iPad Pro (12.9-inch) (4th generation)
  iPad8_12, //iPad Pro (12.9-inch) (4th generation)
  iPad13_1, //iPad Air (4th generation)
  iPad13_2, //iPad Air (4th generation)
  iPad13_8, //iPad Pro (12.9-inch) (5th generation)
  iPad13_9, //iPad Pro (12.9-inch) (5th generation)
  iPad13_10, //iPad Pro (12.9-inch) (5th generation)
  iPad13_11, //iPad Pro (12.9-inch) (5th generation)
  iPad13_16, //iPad Air (5th generation)
  iPad13_17; //iPad Air (5th generation)

  static IPadModel fromIPadOptionsIPadModel(IPadOptions_iPadModel iPadModel) {
    return IPadModel.values.firstWhere((element) => element.name == iPadModel.name, orElse: () => IPadModel.iPad13_10);
  }

  IPadOptions_iPadModel toIPadOptionsIPadModel() {
    return IPadOptions_iPadModel.values.firstWhere((element) => element.name == name, orElse: () => IPadOptions_iPadModel.iPad13_10);
  }
}
