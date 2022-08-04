//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.proto/Skyle.pb.dart';

part 'ipados.freezed.dart';
part 'ipados.g.dart';

@freezed
class IPadOS with _$IPadOS {
  const factory IPadOS({
    @Default(false) bool isOld,
    @Default(false) bool isNotZommed,
  }) = _IPadOS;

  factory IPadOS.fromJson(Map<String, Object?> json) => _$IPadOSFromJson(json);

  factory IPadOS.fromIPadOptions(IPadOptions iPadOptions) {
    return IPadOS(isOld: iPadOptions.isOldiOS, isNotZommed: iPadOptions.isNotZommed);
  }
}
