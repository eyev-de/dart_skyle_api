//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/src/core/data_state.dart';
import 'package:skyle_api/src/domain/entities/switch.dart';
import 'package:test/test.dart';

class SwitchMatcher extends Matcher {
  Switch expected;
  late Switch actual;
  SwitchMatcher(this.expected);

  @override
  Description describe(Description description) {
    return description.add("has expected Switch = '${expected.toJson()}'");
  }

  @override
  Description describeMismatch(item, Description mismatchDescription, Map<dynamic, dynamic> matchState, bool verbose) {
    return mismatchDescription.add("has actual emitted Switch = '${matchState['actual'].toJson()}'");
  }

  @override
  bool matches(actual, Map matchState) {
    if (actual is! DataSuccess<Switch>) return false;
    if (actual.data == null) return false;
    this.actual = actual.data!;
    matchState['actual'] = this.actual;
    return this.actual.isPresent == expected.isPresent;
  }
}
