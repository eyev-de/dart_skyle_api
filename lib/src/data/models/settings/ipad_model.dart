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
  iPad16_3(37),
  iPad16_4(36),
  // iPad Pro (13-inch) (M4)
  // https://support.apple.com/119891
  iPad16_5(35),
  iPad16_6(34),
  // iPad Air (11-inch) (M2)
  // https://support.apple.com/119894
  iPad14_8(33),
  iPad14_9(32),
  // iPad Air (13-inch) (M2)
  // https://support.apple.com/119893
  iPad14_10(31),
  iPad14_11(30),

  /// 2022
  // iPad Pro (11-inch) (4th generation)
  // https://support.apple.com/111842
  iPad14_3(29),
  iPad14_4(28),
  // iPad Pro (12.9-inch) (6th generation)
  // https://support.apple.com/111841
  iPad14_5(27),
  iPad14_6(26),
  // iPad Air (5th generation)
  // https://support.apple.com/111887
  iPad13_16(25),
  iPad13_17(24),

  /// 2021
  // iPad Pro (11-inch) (3rd generation)
  // https://support.apple.com/111897
  iPad13_4(23),
  iPad13_5(22),
  iPad13_6(21),
  iPad13_7(20),
  // iPad Pro (12.9-inch) (5th generation)
  // https://support.apple.com/111896
  iPad13_8(19),
  iPad13_9(18),
  iPad13_10(17),
  iPad13_11(16),
  // iPad mini (6th generation)
  // https://support.apple.com/111886
  iPad14_1(15),
  iPad14_2(14),

  /// 2020
  // iPad Pro (11-inch) (2nd generation)
  // https://support.apple.com/118452
  iPad8_9(13),
  iPad8_10(12),
  // iPad Pro (12.9-inch) (4th generation)
  // https://support.apple.com/111977
  iPad8_11(11),
  iPad8_12(10),
  // iPad Air (4th generation)
  // https://support.apple.com/111905
  iPad13_1(9),
  iPad13_2(8),

  /// 2018
  // iPad Pro (11-inch) (1st generation)
  // https://support.apple.com/111974
  iPad8_1(7),
  iPad8_2(6),
  iPad8_3(5),
  iPad8_4(4),
  // iPad Pro (12.9-inch) (3rd generation)
  // https://support.apple.com/111979
  iPad8_5(3),
  iPad8_6(2),
  iPad8_7(1),
  iPad8_8(0);

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

  double _pixelToMm({required double pixel, required int ppi}) {
    const inchToMm = 25.4; // 1 Zoll = 25,4 mm
    return pixel * (inchToMm / ppi);
  }

  (double, double) get screenSizePixel {
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

  int get pixelPerInch {
    return switch (this) { iPad14_1 || iPad14_2 => 326, _ => 264 };
  }
}
