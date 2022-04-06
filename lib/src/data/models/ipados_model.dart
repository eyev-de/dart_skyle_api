//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/ipados.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart';

class IPadOSModel extends IPadOS {
  IPadOSModel({required bool isOld, required bool isNotZommed}) : super(isOld: isOld, isNotZommed: isNotZommed);

  factory IPadOSModel.fromIPadOptions(IPadOptions iPadOptions) {
    return IPadOSModel(isOld: iPadOptions.isOldiOS, isNotZommed: iPadOptions.isNotZommed);
  }
}
