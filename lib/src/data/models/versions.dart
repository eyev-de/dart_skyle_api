//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

class Versions {
  final String firmware;
  final String eyetracker;
  final String calib;
  final String base;
  final BigInt serial;
  final int skyleType;
  final bool isDemo;

  const Versions({
    required this.firmware,
    required this.eyetracker,
    required this.calib,
    required this.base,
    required this.serial,
    required this.skyleType,
    required this.isDemo,
  });

  Versions.fromJson(Map<String, dynamic> json)
      : firmware = json['firmware'],
        eyetracker = json['eyetracker'],
        calib = json['calib'],
        base = json['base'],
        serial = json['serial'],
        skyleType = json['skyleType'],
        isDemo = json['isDemo'];

  Map<String, dynamic> toJson() => {
        'firmware': firmware,
        'eyetracker': eyetracker,
        'calib': calib,
        'base': base,
        'serial': serial.toString(),
        'skyleType': skyleType,
        'isDemo': isDemo,
      };

  factory Versions.empty() {
    return Versions(firmware: '', eyetracker: '', calib: '', base: '', serial: BigInt.zero, skyleType: 0, isDemo: false);
  }
}
