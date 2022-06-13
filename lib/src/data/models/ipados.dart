//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../generated/Skyle.proto/Skyle.pb.dart';

class IPadOS {
  final bool isOld;
  final bool isNotZommed;

  const IPadOS({
    required this.isOld,
    required this.isNotZommed,
  });

  const IPadOS.create()
      : isOld = false,
        isNotZommed = false;

  IPadOS.fromJson(Map<String, dynamic> json)
      : isOld = json['isOld'],
        isNotZommed = json['isNotZommed'];

  Map<String, dynamic> toJson() => {
        'isOld': isOld,
        'isNotZommed': isNotZommed,
      };

  factory IPadOS.fromIPadOptions(IPadOptions iPadOptions) {
    return IPadOS(isOld: iPadOptions.isOldiOS, isNotZommed: iPadOptions.isNotZommed);
  }
}
