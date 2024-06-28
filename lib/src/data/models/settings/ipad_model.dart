//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum IPadModel {
  /// 2024
  // iPad Pro (11-inch) (M4)
  // https://support.apple.com/119892
  iPad16_3(34),
  iPad16_4(35),
  // iPad Pro (13-inch) (M4)
  // https://support.apple.com/119891
  iPad16_5(36),
  iPad16_6(37),
  // iPad Air (11-inch) (M2)
  // https://support.apple.com/119894
  iPad14_8(30),
  iPad14_9(31),
  // iPad Air (13-inch) (M2)
  // https://support.apple.com/119893
  iPad14_10(32),
  iPad14_11(33),

  /// 2022
  // iPad Pro (11-inch) (4th generation)
  // https://support.apple.com/111842
  iPad14_3(26),
  iPad14_4(27),
  // iPad Pro (12.9-inch) (6th generation)
  // https://support.apple.com/111841
  iPad14_5(28),
  iPad14_6(29),
  // iPad Air (5th generation)
  // https://support.apple.com/111887
  iPad13_16(12),
  iPad13_17(13),

  /// 2021
  // iPad Pro (11-inch) (3rd generation)
  // https://support.apple.com/111897
  iPad13_4(20),
  iPad13_5(21),
  iPad13_6(22),
  iPad13_7(23),
  // iPad Pro (12.9-inch) (5th generation)
  // https://support.apple.com/111896
  iPad13_8(8),
  iPad13_9(9),
  iPad13_10(10),
  iPad13_11(11),
  // iPad mini (6th generation)
  // https://support.apple.com/111886
  iPad14_1(24),
  iPad14_2(25),

  /// 2020
  // iPad Pro (11-inch) (2nd generation)
  // https://support.apple.com/118452
  iPad8_9(18),
  iPad8_10(19),
  // iPad Pro (12.9-inch) (4th generation)
  // https://support.apple.com/111977
  iPad8_11(4),
  iPad8_12(5),
  // iPad Air (4th generation)
  // https://support.apple.com/111905
  iPad13_1(6),
  iPad13_2(7),

  /// 2018
  // iPad Pro (11-inch) (1st generation)
  // https://support.apple.com/111974
  iPad8_1(14),
  iPad8_2(15),
  iPad8_3(16),
  iPad8_4(17),
  // iPad Pro (12.9-inch) (3rd generation)
  // https://support.apple.com/111979
  iPad8_5(0),
  iPad8_6(1),
  iPad8_7(2),
  iPad8_8(3);

  const IPadModel(this.value);

  final int value;

  static IPadModel fromIPadOptionsIPadModel(IPadOptions_iPadModel iPadModel) {
    return IPadModel.values.firstWhere((element) => element.value == iPadModel.value, orElse: () => IPadModel.iPad13_10);
  }

  IPadOptions_iPadModel toIPadOptionsIPadModel() {
    return IPadOptions_iPadModel.values.firstWhere((element) => element.value == value, orElse: () => IPadOptions_iPadModel.IPad13_10);
  }

  (double, double) get screenSizeMM {
    final width = _pixelToMm(pixel: screenSizePixel.$1, ppi: pixelPerInch);
    final height = _pixelToMm(pixel: screenSizePixel.$2, ppi: pixelPerInch);
    return (width, height);
  }

  (double, double) get screenSizeMMLargerText {
    final width = _pixelToMm(pixel: screenSizePixelLargerText.$1, ppi: pixelPerInch);
    final height = _pixelToMm(pixel: screenSizePixelLargerText.$2, ppi: pixelPerInch);
    return (width, height);
  }

  (double, double) get screenSizeMMMoreSpace {
    final width = _pixelToMm(pixel: screenSizePixelMoreSpace.$1, ppi: pixelPerInch);
    final height = _pixelToMm(pixel: screenSizePixelMoreSpace.$2, ppi: pixelPerInch);
    return (width, height);
  }

  double _pixelToMm({required double pixel, required int ppi}) {
    const inchToMm = 25.4; // 1 Zoll = 25,4 mm
    return pixel * (inchToMm / ppi);
  }

  /// Physical Pixels - Display Zoom: Default
  (double, double) get screenSizePixel {
    // width: MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio;
    // height: MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio;
    return switch (this) {
      iPad16_5 || iPad16_6 => const (2752, 2064),
      iPad16_3 || iPad16_4 => const (2420, 1668),
      iPad14_3 || iPad14_4 || iPad13_4 || iPad13_5 || iPad13_6 || iPad13_7 => const (2388, 1668),
      iPad8_1 || iPad8_2 || iPad8_3 || iPad8_4 || iPad8_9 || iPad8_10 => const (2388, 1668),
      iPad14_8 || iPad14_9 || iPad13_16 || iPad13_17 || iPad13_1 || iPad13_2 => const (2360, 1640),
      iPad14_1 || iPad14_2 => const (2266, 1488),
      _ => const (2732, 2048),
    };
  }

  /// Physical Pixels - Display Zoom: Larger Text
  (double, double) get screenSizePixelLargerText {
    return switch (this) {
      iPad16_5 || iPad16_6 => const (2064, 1548),
      // No display zoom available -> same as default size
      iPad16_3 || iPad16_4 => screenSizePixel,
      iPad14_3 || iPad14_4 || iPad13_4 || iPad13_5 || iPad13_6 || iPad13_7 => screenSizePixel,
      iPad8_1 || iPad8_2 || iPad8_3 || iPad8_4 || iPad8_9 || iPad8_10 => screenSizePixel,
      iPad14_8 || iPad14_9 || iPad13_16 || iPad13_17 || iPad13_1 || iPad13_2 => screenSizePixel,
      iPad14_1 || iPad14_2 => screenSizePixel,
      // ---
      _ => const (2048, 1536),
    };
  }

  /// Physical Pixels - Display Zoom: More Space
  (double, double) get screenSizePixelMoreSpace {
    return switch (this) {
      iPad16_5 || iPad16_6 => const (3200, 2400),
      iPad16_3 || iPad16_4 => const (2816, 1940),
      iPad14_3 || iPad14_4 || iPad13_4 || iPad13_5 || iPad13_6 || iPad13_7 => const (2778, 1940),
      iPad8_1 || iPad8_2 || iPad8_3 || iPad8_4 || iPad8_9 || iPad8_10 => const (2778, 1940),
      iPad14_8 || iPad14_9 || iPad13_16 || iPad13_17 || iPad13_1 || iPad13_2 => const (2746, 1908),
      // No display zoom available -> same as default size
      iPad14_1 || iPad14_2 => screenSizePixel,
      // ---
      _ => const (3180, 2384),
    };
  }

  int get pixelPerInch {
    return switch (this) { iPad14_1 || iPad14_2 => 326, _ => 264 };
  }

  bool get hasLargerTextAsDisplayZoom {
    return screenSizePixelLargerText != screenSizePixel;
  }

  bool get hasMoreSpaceAsDisplayZoom {
    return screenSizePixelMoreSpace != screenSizePixel;
  }

  String get label {
    return switch (this) {
      IPadModel.iPad16_3 || IPadModel.iPad16_4 => 'iPad Pro 11-inch (M4)',
      IPadModel.iPad16_5 || IPadModel.iPad16_6 => 'iPad Pro 13-inch (M4)',
      IPadModel.iPad14_8 || IPadModel.iPad14_9 => 'iPad Air 11-inch (M2)',
      IPadModel.iPad14_10 || IPadModel.iPad14_11 => 'iPad Air 13-inch (M2)',
      IPadModel.iPad14_3 || IPadModel.iPad14_4 => 'iPad Pro (11-inch) (4th generation)',
      IPadModel.iPad14_5 || IPadModel.iPad14_6 => 'iPad Pro (12.9-inch) (6th generation)',
      IPadModel.iPad13_16 || IPadModel.iPad13_17 => 'iPad Air (5th generation)',
      IPadModel.iPad13_4 || IPadModel.iPad13_5 || IPadModel.iPad13_6 || IPadModel.iPad13_7 => 'iPad Pro (11-inch) (3rd generation)',
      IPadModel.iPad13_8 || IPadModel.iPad13_9 || IPadModel.iPad13_10 || IPadModel.iPad13_11 => 'iPad Pro (12.9-inch) (5th generation)',
      IPadModel.iPad14_1 || IPadModel.iPad14_2 => 'iPad mini (6th generation)',
      IPadModel.iPad8_9 || IPadModel.iPad8_10 => 'iPad Pro (11-inch) (2nd generation)',
      IPadModel.iPad8_11 || IPadModel.iPad8_12 => 'iPad Pro (12.9-inch) (4th generation)',
      IPadModel.iPad13_1 || IPadModel.iPad13_2 => 'iPad Air (4th generation)',
      IPadModel.iPad8_1 || IPadModel.iPad8_2 || IPadModel.iPad8_3 || IPadModel.iPad8_4 => 'iPad Pro (11-inch) (1st generation)',
      IPadModel.iPad8_5 || IPadModel.iPad8_6 || IPadModel.iPad8_7 || IPadModel.iPad8_8 => 'iPad Pro (12.9-inch) (3rd generation)',
    };
  }

  IPadModel get substitute {
    if (value >= 0 && value <= 13) {
      return this;
    }
    // Closest to old screenSizePixel (2360, 1640) => iPad13_16, iPad13_17, iPad13_1, iPad13_2
    final similarToIPad13_1List = [
      iPad16_3,
      iPad16_4,
      iPad14_3,
      iPad14_4,
      iPad13_4,
      iPad13_5,
      iPad13_6,
      iPad13_7,
      iPad8_1,
      iPad8_2,
      iPad8_3,
      iPad8_4,
      iPad8_9,
      iPad8_10,
      iPad14_8,
      iPad14_9,
      iPad14_1,
      iPad14_2,
    ];
    if (similarToIPad13_1List.contains(this)) {
      return iPad13_1;
    } else {
      // Default: Closest to old screenSizePixel (2732, 2048) iPad8_5 ... 8_8,8_11,8_12 ; iPad13_8 ... 13_11
      //similarToIPad13_11List = [iPad16_5, iPad16_6, iPad14_10, iPad14_11, iPad14_5, iPad14_6];
      return iPad13_11;
    }
  }
}
