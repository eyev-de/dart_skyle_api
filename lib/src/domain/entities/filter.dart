//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

class Filter {
  final int gaze;
  final int fixation;
  Filter({
    required int gaze,
    required int fixation,
  })  : gaze = _validate(gaze),
        fixation = _validate(fixation);

  static int _validate(int value) {
    if (value > 33) return 33;
    if (value < 3) return 3;
    return value;
  }

  const Filter.create()
      : gaze = 11,
        fixation = 5;

  Filter.fromJson(Map<String, dynamic> json)
      : gaze = json['gaze'],
        fixation = json['fixation'];

  Map<String, dynamic> toJson() => {
        'gaze': gaze,
        'fixation': fixation,
      };
}
