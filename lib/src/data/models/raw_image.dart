//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/Skyle.pb.dart' as grpc;

part 'raw_image.freezed.dart';
part 'raw_image.g.dart';

@freezed
class RawImage with _$RawImage {
  const factory RawImage({
    @Default(0) int width,
    @Default(0) int height,
    @Default([]) List<int> data,
  }) = _RawImage;

  const RawImage._();

  factory RawImage.fromJson(Map<String, Object?> json) => _$RawImageFromJson(json);

  factory RawImage.fromRawImage(grpc.RawImage rawImage) {
    return RawImage(width: rawImage.width, height: rawImage.height, data: rawImage.data);
  }
}
