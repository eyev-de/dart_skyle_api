//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:fixnum/fixnum.dart';

class Versions {
  final String firmware;
  final String eyetracker;
  final String calib;
  final String base;
  final Int64 serial;
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
}
