//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.proto/Skyle.pb.dart';

part 'versions.freezed.dart';
part 'versions.g.dart';

@freezed
class Versions with _$Versions {
  const factory Versions({
    required String firmware,
    required String eyetracker,
    required String calib,
    required String base,
    required BigInt serial,
    required int skyleType,
    required bool isDemo,
  }) = _Versions;

  factory Versions.fromJson(Map<String, Object?> json) => _$VersionsFromJson(json);

  factory Versions.empty() {
    return Versions(firmware: '', eyetracker: '', calib: '', base: '', serial: BigInt.zero, skyleType: 0, isDemo: false);
  }
}
