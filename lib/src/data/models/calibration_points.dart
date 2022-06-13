//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

enum CalibrationPoints { one, two, five, nine }

extension CalibrationPointsExtension on CalibrationPoints {
  int get value {
    switch (this) {
      case CalibrationPoints.one:
        return 1;
      case CalibrationPoints.two:
        return 2;
      case CalibrationPoints.five:
        return 5;
      case CalibrationPoints.nine:
        return 9;
    }
  }

  static CalibrationPoints fromInt(int value) {
    switch (value) {
      case 1:
        return CalibrationPoints.one;
      case 2:
        return CalibrationPoints.two;
      case 5:
        return CalibrationPoints.five;
      default:
        return CalibrationPoints.nine;
    }
  }

  List<int> get array {
    switch (this) {
      case CalibrationPoints.one:
        return [4];
      case CalibrationPoints.two:
        return [0, 8];
      case CalibrationPoints.five:
        return [0, 2, 4, 6, 8];
      case CalibrationPoints.nine:
        return [0, 1, 2, 3, 4, 5, 6, 7, 8];
    }
  }
}
