//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/Skyle.pb.dart' as grpc;
import '../../generated/Types.pb.dart' as types;

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
class Point with _$Point {
  const factory Point({
    @Default(0.0) double x,
    @Default(0.0) double y,
  }) = _Point;

  const Point._();

  factory Point.fromJson(Map<String, Object?> json) => _$PointFromJson(json);
  factory Point.fromPoint(types.Point point) {
    return Point(x: point.x, y: point.y);
  }

  bool isEqualTo(types.Point point) {
    return point.x == x && point.y == y;
  }

  bool isZero() {
    return x == 0 && y == 0;
  }
}

@freezed
class Size with _$Size {
  const factory Size({
    @Default(0.0) double width,
    @Default(0.0) double height,
  }) = _Size;

  factory Size.fromJson(Map<String, Object?> json) => _$SizeFromJson(json);
  factory Size.fromSize(types.Size size) {
    return Size(width: size.width, height: size.height);
  }
}

@freezed
class Rect with _$Rect {
  const factory Rect({
    @Default(Point()) Point topLeft,
    @Default(Size()) Size size,
  }) = _Rect;

  factory Rect.fromJson(Map<String, Object?> json) => _$RectFromJson(json);
  factory Rect.fromRect(types.Rectangle rect) {
    return Rect(topLeft: Point.fromPoint(rect.topLeft), size: Size.fromSize(rect.size));
  }
}

@freezed
class Feature with _$Feature {
  const factory Feature({
    @Default(Point()) Point center,
  }) = _Feature;

  factory Feature.fromJson(Map<String, Object?> json) => _$FeatureFromJson(json);
  factory Feature.fromFeature(types.Feature feature) {
    return Feature(center: Point.fromPoint(feature.center));
  }
}

@freezed
class Glints with _$Glints {
  const factory Glints({
    @Default(Feature()) Feature left,
    @Default(Feature()) Feature right,
  }) = _Glints;

  factory Glints.fromJson(Map<String, Object?> json) => _$GlintsFromJson(json);
  factory Glints.fromGlints(types.Glints glints) {
    return Glints(left: Feature.fromFeature(glints.left), right: Feature.fromFeature(glints.right));
  }
}

@freezed
class Eye with _$Eye {
  const factory Eye({
    @Default(Point()) Point keyPoint,
    @Default(Feature()) Feature iris,
    @Default(Feature()) Feature pupil,
    @Default(Glints()) Glints glints,
    @Default(0.0) double distance,
  }) = _Eye;

  factory Eye.fromJson(Map<String, Object?> json) => _$EyeFromJson(json);
  factory Eye.fromEye(types.Eye eye) {
    return Eye(
      keyPoint: Point.fromPoint(eye.keyPoint),
      iris: Feature.fromFeature(eye.iris),
      pupil: Feature.fromFeature(eye.pupil),
      glints: Glints.fromGlints(eye.glints),
      distance: eye.distance,
    );
  }
}

@freezed
class Eyes with _$Eyes {
  const factory Eyes({
    @Default(Eye()) Eye left,
    @Default(Eye()) Eye right,
  }) = _Eyes;

  factory Eyes.fromJson(Map<String, Object?> json) => _$EyesFromJson(json);
  factory Eyes.fromEyes(types.Eyes eyes) {
    return Eyes(left: Eye.fromEye(eyes.left), right: Eye.fromEye(eyes.right));
  }
}

@freezed
class Face with _$Face {
  const factory Face({
    @Default(Rect()) Rect boundingRect,
    @Default(Eyes()) Eyes eyes,
  }) = _Face;

  factory Face.fromJson(Map<String, Object?> json) => _$FaceFromJson(json);
  factory Face.fromFace(types.Face face) {
    return Face(boundingRect: Rect.fromRect(face.boundingRect), eyes: Eyes.fromEyes(face.eyes));
  }
}

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

enum Trigger {
  singelClick,
  doubleClick,
  holdClick,
  fixation;

  static Trigger fromTriggerMessage(grpc.TriggerMessage message) {
    if (message.hasSingleClick()) return Trigger.singelClick;
    if (message.hasDoubleClick()) return Trigger.doubleClick;
    if (message.hasHoldClick()) return Trigger.holdClick;
    if (message.hasFixation()) return Trigger.fixation;
    return Trigger.singelClick;
  }
}

@freezed
class BinocularGaze with _$BinocularGaze {
  const factory BinocularGaze({
    @Default(Point()) Point leftGaze,
    @Default(Point()) Point rightGaze,
  }) = _BinocularGaze;

  const BinocularGaze._();

  factory BinocularGaze.fromJson(Map<String, Object?> json) => _$BinocularGazeFromJson(json);
  factory BinocularGaze.fromBinocularGaze(grpc.BinocularGaze binocularGaze) {
    return BinocularGaze(leftGaze: Point.fromPoint(binocularGaze.leftGaze), rightGaze: Point.fromPoint(binocularGaze.rightGaze));
  }

  bool isEqualTo(grpc.BinocularGaze binocularGaze) {
    return leftGaze.isEqualTo(binocularGaze.leftGaze) && rightGaze.isEqualTo(binocularGaze.rightGaze);
  }

  bool isZero() {
    return leftGaze.x == 0 && leftGaze.y == 0 && rightGaze.x == 0 && rightGaze.y == 0;
  }
}
