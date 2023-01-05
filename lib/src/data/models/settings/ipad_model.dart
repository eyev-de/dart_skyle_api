//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum IPadModel {
  iPad8_5(0), //iPad Pro (12.9-inch) (3rd generation)
  iPad8_6(1), //iPad Pro (12.9-inch) (3rd generation)
  iPad8_7(2), //iPad Pro (12.9-inch) (3rd generation)
  iPad8_8(3), //iPad Pro (12.9-inch) (3rd generation)
  iPad8_11(4), //iPad Pro (12.9-inch) (4th generation)
  iPad8_12(5), //iPad Pro (12.9-inch) (4th generation)

  iPad13_1(6), //iPad Air (4th generation)
  iPad13_2(7), //iPad Air (4th generation)

  iPad13_8(8), //iPad Pro (12.9-inch) (5th generation)
  iPad13_9(9), //iPad Pro (12.9-inch) (5th generation)
  iPad13_10(10), //iPad Pro (12.9-inch) (5th generation)
  iPad13_11(11), //iPad Pro (12.9-inch) (5th generation)

  iPad13_16(12), //iPad Air (5th generation)
  iPad13_17(13); //iPad Air (5th generation)

  final int value;
  const IPadModel(this.value);

  static IPadModel fromIPadOptionsIPadModel(IPadOptions_iPadModel iPadModel) {
    return IPadModel.values.firstWhere((element) => element.value == iPadModel.value, orElse: () => IPadModel.iPad13_10);
  }

  IPadOptions_iPadModel toIPadOptionsIPadModel() {
    return IPadOptions_iPadModel.values.firstWhere((element) => element.value == value, orElse: () => IPadOptions_iPadModel.IPad13_10);
  }
}
