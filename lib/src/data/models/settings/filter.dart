//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.pb.dart';

part 'filter.freezed.dart';
part 'filter.g.dart';

@freezed
class Filter with _$Filter {
  const factory Filter({
    @Default(11) int gaze,
    @Default(5) int fixation,
  }) = _Filter;

  //   Filter({
  //   required int gaze,
  //   required int fixation,
  // })  : gaze = _validate(gaze),
  //       fixation = _validate(fixation);

  factory Filter.fromJson(Map<String, Object?> json) => _$FilterFromJson(json);

  static int validate(int value) {
    if (value > 33) return 33;
    if (value < 3) return 3;
    return value;
  }

  factory Filter.fromFilterOptions(FilterOptions filterOptions) {
    return Filter(gaze: filterOptions.gazeFilter, fixation: filterOptions.fixationFilter);
  }
}
