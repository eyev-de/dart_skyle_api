//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'size.freezed.dart';
part 'size.g.dart';

@freezed
class Size with _$Size {
  const factory Size({
    required double width,
    required double height,
  }) = _Size;

  factory Size.fromJson(Map<String, Object?> json) => _$SizeFromJson(json);

  factory Size.zero() {
    return const Size(width: 0, height: 0);
  }
}
