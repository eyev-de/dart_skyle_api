//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

class IPadOS {
  final bool isOld;
  final bool isNotZommed;
  const IPadOS({
    required this.isOld,
    required this.isNotZommed,
  });
  IPadOS.fromJson(Map<String, dynamic> json)
      : isOld = json['isOld'],
        isNotZommed = json['isNotZommed'];

  Map<String, dynamic> toJson() => {
        'isOld': isOld,
        'isNotZommed': isNotZommed,
      };
}
