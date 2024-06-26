//
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Profile_Skill extends $pb.ProtobufEnum {
  static const Profile_Skill Low = Profile_Skill._(0, _omitEnumNames ? '' : 'Low');
  static const Profile_Skill Medium = Profile_Skill._(1, _omitEnumNames ? '' : 'Medium');
  static const Profile_Skill High = Profile_Skill._(2, _omitEnumNames ? '' : 'High');

  static const $core.List<Profile_Skill> values = <Profile_Skill> [
    Low,
    Medium,
    High,
  ];

  static final $core.Map<$core.int, Profile_Skill> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Profile_Skill? valueOf($core.int value) => _byValue[value];

  const Profile_Skill._($core.int v, $core.String n) : super(v, n);
}

class Options_eyeUse extends $pb.ProtobufEnum {
  static const Options_eyeUse Both = Options_eyeUse._(0, _omitEnumNames ? '' : 'Both');
  static const Options_eyeUse Left = Options_eyeUse._(1, _omitEnumNames ? '' : 'Left');
  static const Options_eyeUse Right = Options_eyeUse._(2, _omitEnumNames ? '' : 'Right');

  static const $core.List<Options_eyeUse> values = <Options_eyeUse> [
    Both,
    Left,
    Right,
  ];

  static final $core.Map<$core.int, Options_eyeUse> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Options_eyeUse? valueOf($core.int value) => _byValue[value];

  const Options_eyeUse._($core.int v, $core.String n) : super(v, n);
}

/// Set this to the iPad model you are using. If the device isn't an iPad, this value will be ignored.
class IPadOptions_iPadModel extends $pb.ProtobufEnum {
  static const IPadOptions_iPadModel IPad8_5 = IPadOptions_iPadModel._(0, _omitEnumNames ? '' : 'IPad8_5');
  static const IPadOptions_iPadModel IPad8_6 = IPadOptions_iPadModel._(1, _omitEnumNames ? '' : 'IPad8_6');
  static const IPadOptions_iPadModel IPad8_7 = IPadOptions_iPadModel._(2, _omitEnumNames ? '' : 'IPad8_7');
  static const IPadOptions_iPadModel IPad8_8 = IPadOptions_iPadModel._(3, _omitEnumNames ? '' : 'IPad8_8');
  static const IPadOptions_iPadModel IPad8_11 = IPadOptions_iPadModel._(4, _omitEnumNames ? '' : 'IPad8_11');
  static const IPadOptions_iPadModel IPad8_12 = IPadOptions_iPadModel._(5, _omitEnumNames ? '' : 'IPad8_12');
  static const IPadOptions_iPadModel IPad13_1 = IPadOptions_iPadModel._(6, _omitEnumNames ? '' : 'IPad13_1');
  static const IPadOptions_iPadModel IPad13_2 = IPadOptions_iPadModel._(7, _omitEnumNames ? '' : 'IPad13_2');
  static const IPadOptions_iPadModel IPad13_8 = IPadOptions_iPadModel._(8, _omitEnumNames ? '' : 'IPad13_8');
  static const IPadOptions_iPadModel IPad13_9 = IPadOptions_iPadModel._(9, _omitEnumNames ? '' : 'IPad13_9');
  static const IPadOptions_iPadModel IPad13_10 = IPadOptions_iPadModel._(10, _omitEnumNames ? '' : 'IPad13_10');
  static const IPadOptions_iPadModel IPad13_11 = IPadOptions_iPadModel._(11, _omitEnumNames ? '' : 'IPad13_11');
  static const IPadOptions_iPadModel IPad13_16 = IPadOptions_iPadModel._(12, _omitEnumNames ? '' : 'IPad13_16');
  static const IPadOptions_iPadModel IPad13_17 = IPadOptions_iPadModel._(13, _omitEnumNames ? '' : 'IPad13_17');
  static const IPadOptions_iPadModel IPad8_1 = IPadOptions_iPadModel._(14, _omitEnumNames ? '' : 'IPad8_1');
  static const IPadOptions_iPadModel IPad8_2 = IPadOptions_iPadModel._(15, _omitEnumNames ? '' : 'IPad8_2');
  static const IPadOptions_iPadModel IPad8_3 = IPadOptions_iPadModel._(16, _omitEnumNames ? '' : 'IPad8_3');
  static const IPadOptions_iPadModel IPad8_4 = IPadOptions_iPadModel._(17, _omitEnumNames ? '' : 'IPad8_4');
  static const IPadOptions_iPadModel IPad8_9 = IPadOptions_iPadModel._(18, _omitEnumNames ? '' : 'IPad8_9');
  static const IPadOptions_iPadModel IPad8_10 = IPadOptions_iPadModel._(19, _omitEnumNames ? '' : 'IPad8_10');
  static const IPadOptions_iPadModel IPad13_4 = IPadOptions_iPadModel._(20, _omitEnumNames ? '' : 'IPad13_4');
  static const IPadOptions_iPadModel IPad13_5 = IPadOptions_iPadModel._(21, _omitEnumNames ? '' : 'IPad13_5');
  static const IPadOptions_iPadModel IPad13_6 = IPadOptions_iPadModel._(22, _omitEnumNames ? '' : 'IPad13_6');
  static const IPadOptions_iPadModel IPad13_7 = IPadOptions_iPadModel._(23, _omitEnumNames ? '' : 'IPad13_7');
  static const IPadOptions_iPadModel IPad14_1 = IPadOptions_iPadModel._(24, _omitEnumNames ? '' : 'IPad14_1');
  static const IPadOptions_iPadModel IPad14_2 = IPadOptions_iPadModel._(25, _omitEnumNames ? '' : 'IPad14_2');
  static const IPadOptions_iPadModel IPad14_3 = IPadOptions_iPadModel._(26, _omitEnumNames ? '' : 'IPad14_3');
  static const IPadOptions_iPadModel IPad14_4 = IPadOptions_iPadModel._(27, _omitEnumNames ? '' : 'IPad14_4');
  static const IPadOptions_iPadModel IPad14_5 = IPadOptions_iPadModel._(28, _omitEnumNames ? '' : 'IPad14_5');
  static const IPadOptions_iPadModel IPad14_6 = IPadOptions_iPadModel._(29, _omitEnumNames ? '' : 'IPad14_6');
  static const IPadOptions_iPadModel IPad14_8 = IPadOptions_iPadModel._(30, _omitEnumNames ? '' : 'IPad14_8');
  static const IPadOptions_iPadModel IPad14_9 = IPadOptions_iPadModel._(31, _omitEnumNames ? '' : 'IPad14_9');
  static const IPadOptions_iPadModel IPad14_10 = IPadOptions_iPadModel._(32, _omitEnumNames ? '' : 'IPad14_10');
  static const IPadOptions_iPadModel IPad14_11 = IPadOptions_iPadModel._(33, _omitEnumNames ? '' : 'IPad14_11');
  static const IPadOptions_iPadModel IPad16_3 = IPadOptions_iPadModel._(34, _omitEnumNames ? '' : 'IPad16_3');
  static const IPadOptions_iPadModel IPad16_4 = IPadOptions_iPadModel._(35, _omitEnumNames ? '' : 'IPad16_4');
  static const IPadOptions_iPadModel IPad16_5 = IPadOptions_iPadModel._(36, _omitEnumNames ? '' : 'IPad16_5');
  static const IPadOptions_iPadModel IPad16_6 = IPadOptions_iPadModel._(37, _omitEnumNames ? '' : 'IPad16_6');

  static const $core.List<IPadOptions_iPadModel> values = <IPadOptions_iPadModel> [
    IPad8_5,
    IPad8_6,
    IPad8_7,
    IPad8_8,
    IPad8_11,
    IPad8_12,
    IPad13_1,
    IPad13_2,
    IPad13_8,
    IPad13_9,
    IPad13_10,
    IPad13_11,
    IPad13_16,
    IPad13_17,
    IPad8_1,
    IPad8_2,
    IPad8_3,
    IPad8_4,
    IPad8_9,
    IPad8_10,
    IPad13_4,
    IPad13_5,
    IPad13_6,
    IPad13_7,
    IPad14_1,
    IPad14_2,
    IPad14_3,
    IPad14_4,
    IPad14_5,
    IPad14_6,
    IPad14_8,
    IPad14_9,
    IPad14_10,
    IPad14_11,
    IPad16_3,
    IPad16_4,
    IPad16_5,
    IPad16_6,
  ];

  static final $core.Map<$core.int, IPadOptions_iPadModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IPadOptions_iPadModel? valueOf($core.int value) => _byValue[value];

  const IPadOptions_iPadModel._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
