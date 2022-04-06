//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/filter.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart';

class FilterModel extends Filter {
  FilterModel({required int gaze, required int fixation}) : super(gaze: gaze, fixation: fixation);

  factory FilterModel.fromFilterOptions(FilterOptions filterOptions) {
    return FilterModel(gaze: filterOptions.gazeFilter, fixation: filterOptions.fixationFilter);
  }
}
