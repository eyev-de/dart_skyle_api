///
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Profile_Skill extends $pb.ProtobufEnum {
  static const Profile_Skill Low = Profile_Skill._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Low');
  static const Profile_Skill Medium = Profile_Skill._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Medium');
  static const Profile_Skill High = Profile_Skill._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'High');

  static const $core.List<Profile_Skill> values = <Profile_Skill> [
    Low,
    Medium,
    High,
  ];

  static final $core.Map<$core.int, Profile_Skill> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Profile_Skill? valueOf($core.int value) => _byValue[value];

  const Profile_Skill._($core.int v, $core.String n) : super(v, n);
}

class IPadOptions_iPadModel extends $pb.ProtobufEnum {
  static const IPadOptions_iPadModel iPadPro12_9 = IPadOptions_iPadModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'iPadPro12_9');
  static const IPadOptions_iPadModel iPadAir2022 = IPadOptions_iPadModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'iPadAir2022');

  static const $core.List<IPadOptions_iPadModel> values = <IPadOptions_iPadModel> [
    iPadPro12_9,
    iPadAir2022,
  ];

  static final $core.Map<$core.int, IPadOptions_iPadModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IPadOptions_iPadModel? valueOf($core.int value) => _byValue[value];

  const IPadOptions_iPadModel._($core.int v, $core.String n) : super(v, n);
}

