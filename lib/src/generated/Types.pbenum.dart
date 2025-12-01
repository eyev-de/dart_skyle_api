// This is a generated file - do not edit.
//
// Generated from Types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Mat_MatType extends $pb.ProtobufEnum {
  static const Mat_MatType CV_8UC1 =
      Mat_MatType._(0, _omitEnumNames ? '' : 'CV_8UC1');
  static const Mat_MatType CV_8UC3 =
      Mat_MatType._(1, _omitEnumNames ? '' : 'CV_8UC3');
  static const Mat_MatType CV_8UC4 =
      Mat_MatType._(2, _omitEnumNames ? '' : 'CV_8UC4');
  static const Mat_MatType CV_16UC1 =
      Mat_MatType._(3, _omitEnumNames ? '' : 'CV_16UC1');
  static const Mat_MatType CV_16UC3 =
      Mat_MatType._(4, _omitEnumNames ? '' : 'CV_16UC3');
  static const Mat_MatType CV_16UC4 =
      Mat_MatType._(5, _omitEnumNames ? '' : 'CV_16UC4');
  static const Mat_MatType CV_32FC1 =
      Mat_MatType._(6, _omitEnumNames ? '' : 'CV_32FC1');
  static const Mat_MatType CV_32FC3 =
      Mat_MatType._(7, _omitEnumNames ? '' : 'CV_32FC3');
  static const Mat_MatType CV_32FC4 =
      Mat_MatType._(8, _omitEnumNames ? '' : 'CV_32FC4');
  static const Mat_MatType CV_64FC1 =
      Mat_MatType._(9, _omitEnumNames ? '' : 'CV_64FC1');
  static const Mat_MatType CV_64FC3 =
      Mat_MatType._(10, _omitEnumNames ? '' : 'CV_64FC3');
  static const Mat_MatType CV_64FC4 =
      Mat_MatType._(11, _omitEnumNames ? '' : 'CV_64FC4');

  static const $core.List<Mat_MatType> values = <Mat_MatType>[
    CV_8UC1,
    CV_8UC3,
    CV_8UC4,
    CV_16UC1,
    CV_16UC3,
    CV_16UC4,
    CV_32FC1,
    CV_32FC3,
    CV_32FC4,
    CV_64FC1,
    CV_64FC3,
    CV_64FC4,
  ];

  static final $core.List<Mat_MatType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static Mat_MatType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Mat_MatType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
