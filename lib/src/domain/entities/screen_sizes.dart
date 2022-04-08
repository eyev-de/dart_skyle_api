//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import 'size.dart';

class ScreenSizes {
  final Size resolution;
  final Size? dimensions;
  ScreenSizes({
    required this.resolution,
    this.dimensions,
  });
  const ScreenSizes.create()
      : resolution = const Size(width: 1920, height: 1080),
        dimensions = null;
  ScreenSizes.fromJson(Map<String, dynamic> json)
      : resolution = jsonDecode(json['resolution']),
        dimensions = jsonDecode(json['dimensions']);

  Map<String, dynamic> toJson() => {
        'resolution': jsonEncode(resolution),
        'dimensions': jsonEncode(dimensions),
      };
}
