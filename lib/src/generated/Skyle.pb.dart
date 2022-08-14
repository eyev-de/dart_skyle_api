///
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $1;

import 'Skyle.pbenum.dart';

export 'Skyle.pbenum.dart';

class TriggerMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TriggerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singleClick', protoName: 'singleClick')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'holdClick', protoName: 'holdClick')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixation')
    ..hasRequiredFields = false
  ;

  TriggerMessage._() : super();
  factory TriggerMessage({
    $core.bool? singleClick,
    $core.bool? doubleClick,
    $core.bool? holdClick,
    $core.bool? fixation,
  }) {
    final _result = create();
    if (singleClick != null) {
      _result.singleClick = singleClick;
    }
    if (doubleClick != null) {
      _result.doubleClick = doubleClick;
    }
    if (holdClick != null) {
      _result.holdClick = holdClick;
    }
    if (fixation != null) {
      _result.fixation = fixation;
    }
    return _result;
  }
  factory TriggerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TriggerMessage clone() => TriggerMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TriggerMessage copyWith(void Function(TriggerMessage) updates) => super.copyWith((message) => updates(message as TriggerMessage)) as TriggerMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TriggerMessage create() => TriggerMessage._();
  TriggerMessage createEmptyInstance() => create();
  static $pb.PbList<TriggerMessage> createRepeated() => $pb.PbList<TriggerMessage>();
  @$core.pragma('dart2js:noInline')
  static TriggerMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TriggerMessage>(create);
  static TriggerMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get singleClick => $_getBF(0);
  @$pb.TagNumber(1)
  set singleClick($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingleClick() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleClick() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get doubleClick => $_getBF(1);
  @$pb.TagNumber(2)
  set doubleClick($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoubleClick() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleClick() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get holdClick => $_getBF(2);
  @$pb.TagNumber(3)
  set holdClick($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHoldClick() => $_has(2);
  @$pb.TagNumber(3)
  void clearHoldClick() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get fixation => $_getBF(3);
  @$pb.TagNumber(4)
  set fixation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFixation() => $_has(3);
  @$pb.TagNumber(4)
  void clearFixation() => clearField(4);
}

class ResetMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'device')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..hasRequiredFields = false
  ;

  ResetMessage._() : super();
  factory ResetMessage({
    $core.bool? services,
    $core.bool? device,
    $core.bool? data,
  }) {
    final _result = create();
    if (services != null) {
      _result.services = services;
    }
    if (device != null) {
      _result.device = device;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory ResetMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetMessage clone() => ResetMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetMessage copyWith(void Function(ResetMessage) updates) => super.copyWith((message) => updates(message as ResetMessage)) as ResetMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetMessage create() => ResetMessage._();
  ResetMessage createEmptyInstance() => create();
  static $pb.PbList<ResetMessage> createRepeated() => $pb.PbList<ResetMessage>();
  @$core.pragma('dart2js:noInline')
  static ResetMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetMessage>(create);
  static ResetMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get services => $_getBF(0);
  @$pb.TagNumber(1)
  set services($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServices() => $_has(0);
  @$pb.TagNumber(1)
  void clearServices() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get device => $_getBF(1);
  @$pb.TagNumber(2)
  set device($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get data => $_getBF(2);
  @$pb.TagNumber(3)
  set data($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Profile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', $pb.PbFieldType.O3, protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<Profile_Skill>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skill', $pb.PbFieldType.OE, defaultOrMaker: Profile_Skill.Low, valueOf: Profile_Skill.valueOf, enumValues: Profile_Skill.values)
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile({
    $core.int? iD,
    $core.String? name,
    Profile_Skill? skill,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (name != null) {
      _result.name = name;
    }
    if (skill != null) {
      _result.skill = skill;
    }
    return _result;
  }
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get iD => $_getIZ(0);
  @$pb.TagNumber(1)
  set iD($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  Profile_Skill get skill => $_getN(2);
  @$pb.TagNumber(3)
  set skill(Profile_Skill v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkill() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkill() => clearField(3);
}

class StatusMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatusMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  StatusMessage._() : super();
  factory StatusMessage({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory StatusMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusMessage clone() => StatusMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusMessage copyWith(void Function(StatusMessage) updates) => super.copyWith((message) => updates(message as StatusMessage)) as StatusMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusMessage create() => StatusMessage._();
  StatusMessage createEmptyInstance() => create();
  static $pb.PbList<StatusMessage> createRepeated() => $pb.PbList<StatusMessage>();
  @$core.pragma('dart2js:noInline')
  static StatusMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusMessage>(create);
  static StatusMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

enum OptionMessage_Message {
  empty, 
  options, 
  notSet
}

class OptionMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OptionMessage_Message> _OptionMessage_MessageByTag = {
    1 : OptionMessage_Message.empty,
    2 : OptionMessage_Message.options,
    0 : OptionMessage_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OptionMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Empty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empty', subBuilder: $1.Empty.create)
    ..aOM<Options>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: Options.create)
    ..hasRequiredFields = false
  ;

  OptionMessage._() : super();
  factory OptionMessage({
    $1.Empty? empty,
    Options? options,
  }) {
    final _result = create();
    if (empty != null) {
      _result.empty = empty;
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory OptionMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionMessage clone() => OptionMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionMessage copyWith(void Function(OptionMessage) updates) => super.copyWith((message) => updates(message as OptionMessage)) as OptionMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OptionMessage create() => OptionMessage._();
  OptionMessage createEmptyInstance() => create();
  static $pb.PbList<OptionMessage> createRepeated() => $pb.PbList<OptionMessage>();
  @$core.pragma('dart2js:noInline')
  static OptionMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionMessage>(create);
  static OptionMessage? _defaultInstance;

  OptionMessage_Message whichMessage() => _OptionMessage_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Empty get empty => $_getN(0);
  @$pb.TagNumber(1)
  set empty($1.Empty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpty() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpty() => clearField(1);
  @$pb.TagNumber(1)
  $1.Empty ensureEmpty() => $_ensure(0);

  @$pb.TagNumber(2)
  Options get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(Options v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  Options ensureOptions() => $_ensure(1);
}

enum calibControlMessages_Message {
  calibControl, 
  calibImprove, 
  calibConfirm, 
  notSet
}

class calibControlMessages extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, calibControlMessages_Message> _calibControlMessages_MessageByTag = {
    1 : calibControlMessages_Message.calibControl,
    2 : calibControlMessages_Message.calibImprove,
    3 : calibControlMessages_Message.calibConfirm,
    0 : calibControlMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calibControlMessages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibControl', protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibImprove>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibImprove', protoName: 'calibImprove', subBuilder: CalibImprove.create)
    ..aOM<CalibConfirm>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibConfirm', protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false
  ;

  calibControlMessages._() : super();
  factory calibControlMessages({
    CalibControl? calibControl,
    CalibImprove? calibImprove,
    CalibConfirm? calibConfirm,
  }) {
    final _result = create();
    if (calibControl != null) {
      _result.calibControl = calibControl;
    }
    if (calibImprove != null) {
      _result.calibImprove = calibImprove;
    }
    if (calibConfirm != null) {
      _result.calibConfirm = calibConfirm;
    }
    return _result;
  }
  factory calibControlMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory calibControlMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  calibControlMessages clone() => calibControlMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  calibControlMessages copyWith(void Function(calibControlMessages) updates) => super.copyWith((message) => updates(message as calibControlMessages)) as calibControlMessages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static calibControlMessages create() => calibControlMessages._();
  calibControlMessages createEmptyInstance() => create();
  static $pb.PbList<calibControlMessages> createRepeated() => $pb.PbList<calibControlMessages>();
  @$core.pragma('dart2js:noInline')
  static calibControlMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<calibControlMessages>(create);
  static calibControlMessages? _defaultInstance;

  calibControlMessages_Message whichMessage() => _calibControlMessages_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalibControl get calibControl => $_getN(0);
  @$pb.TagNumber(1)
  set calibControl(CalibControl v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalibControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibControl() => clearField(1);
  @$pb.TagNumber(1)
  CalibControl ensureCalibControl() => $_ensure(0);

  @$pb.TagNumber(2)
  CalibImprove get calibImprove => $_getN(1);
  @$pb.TagNumber(2)
  set calibImprove(CalibImprove v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalibImprove() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalibImprove() => clearField(2);
  @$pb.TagNumber(2)
  CalibImprove ensureCalibImprove() => $_ensure(1);

  @$pb.TagNumber(3)
  CalibConfirm get calibConfirm => $_getN(2);
  @$pb.TagNumber(3)
  set calibConfirm(CalibConfirm v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalibConfirm() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalibConfirm() => clearField(3);
  @$pb.TagNumber(3)
  CalibConfirm ensureCalibConfirm() => $_ensure(2);
}

enum calibCursorMessages_Message {
  empty, 
  calibConfirm, 
  notSet
}

class calibCursorMessages extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, calibCursorMessages_Message> _calibCursorMessages_MessageByTag = {
    1 : calibCursorMessages_Message.empty,
    3 : calibCursorMessages_Message.calibConfirm,
    0 : calibCursorMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calibCursorMessages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<$1.Empty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empty', subBuilder: $1.Empty.create)
    ..aOM<CalibConfirm>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibConfirm', protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false
  ;

  calibCursorMessages._() : super();
  factory calibCursorMessages({
    $1.Empty? empty,
    CalibConfirm? calibConfirm,
  }) {
    final _result = create();
    if (empty != null) {
      _result.empty = empty;
    }
    if (calibConfirm != null) {
      _result.calibConfirm = calibConfirm;
    }
    return _result;
  }
  factory calibCursorMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory calibCursorMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  calibCursorMessages clone() => calibCursorMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  calibCursorMessages copyWith(void Function(calibCursorMessages) updates) => super.copyWith((message) => updates(message as calibCursorMessages)) as calibCursorMessages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static calibCursorMessages create() => calibCursorMessages._();
  calibCursorMessages createEmptyInstance() => create();
  static $pb.PbList<calibCursorMessages> createRepeated() => $pb.PbList<calibCursorMessages>();
  @$core.pragma('dart2js:noInline')
  static calibCursorMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<calibCursorMessages>(create);
  static calibCursorMessages? _defaultInstance;

  calibCursorMessages_Message whichMessage() => _calibCursorMessages_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Empty get empty => $_getN(0);
  @$pb.TagNumber(1)
  set empty($1.Empty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpty() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpty() => clearField(1);
  @$pb.TagNumber(1)
  $1.Empty ensureEmpty() => $_ensure(0);

  @$pb.TagNumber(3)
  CalibConfirm get calibConfirm => $_getN(1);
  @$pb.TagNumber(3)
  set calibConfirm(CalibConfirm v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalibConfirm() => $_has(1);
  @$pb.TagNumber(3)
  void clearCalibConfirm() => clearField(3);
  @$pb.TagNumber(3)
  CalibConfirm ensureCalibConfirm() => $_ensure(1);
}

class CalibControl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibControl', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibrate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfPoints', $pb.PbFieldType.O3, protoName: 'numberOfPoints')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abort')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopHID', protoName: 'stopHID')
    ..aOM<ScreenResolution>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'res', subBuilder: ScreenResolution.create)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepByStep', protoName: 'stepByStep')
    ..hasRequiredFields = false
  ;

  CalibControl._() : super();
  factory CalibControl({
    $core.bool? calibrate,
    $core.int? numberOfPoints,
    $core.bool? abort,
    $core.bool? stopHID,
    ScreenResolution? res,
    $core.bool? stepByStep,
  }) {
    final _result = create();
    if (calibrate != null) {
      _result.calibrate = calibrate;
    }
    if (numberOfPoints != null) {
      _result.numberOfPoints = numberOfPoints;
    }
    if (abort != null) {
      _result.abort = abort;
    }
    if (stopHID != null) {
      _result.stopHID = stopHID;
    }
    if (res != null) {
      _result.res = res;
    }
    if (stepByStep != null) {
      _result.stepByStep = stepByStep;
    }
    return _result;
  }
  factory CalibControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibControl clone() => CalibControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibControl copyWith(void Function(CalibControl) updates) => super.copyWith((message) => updates(message as CalibControl)) as CalibControl; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibControl create() => CalibControl._();
  CalibControl createEmptyInstance() => create();
  static $pb.PbList<CalibControl> createRepeated() => $pb.PbList<CalibControl>();
  @$core.pragma('dart2js:noInline')
  static CalibControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibControl>(create);
  static CalibControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get calibrate => $_getBF(0);
  @$pb.TagNumber(1)
  set calibrate($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalibrate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibrate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numberOfPoints => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberOfPoints($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberOfPoints() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfPoints() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get abort => $_getBF(2);
  @$pb.TagNumber(3)
  set abort($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAbort() => $_has(2);
  @$pb.TagNumber(3)
  void clearAbort() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get stopHID => $_getBF(3);
  @$pb.TagNumber(4)
  set stopHID($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStopHID() => $_has(3);
  @$pb.TagNumber(4)
  void clearStopHID() => clearField(4);

  @$pb.TagNumber(5)
  ScreenResolution get res => $_getN(4);
  @$pb.TagNumber(5)
  set res(ScreenResolution v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRes() => $_has(4);
  @$pb.TagNumber(5)
  void clearRes() => clearField(5);
  @$pb.TagNumber(5)
  ScreenResolution ensureRes() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get stepByStep => $_getBF(5);
  @$pb.TagNumber(6)
  set stepByStep($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStepByStep() => $_has(5);
  @$pb.TagNumber(6)
  void clearStepByStep() => clearField(6);
}

class ScreenResolution extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScreenResolution', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'widthinMM', $pb.PbFieldType.O3, protoName: 'widthinMM')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heightinMM', $pb.PbFieldType.O3, protoName: 'heightinMM')
    ..hasRequiredFields = false
  ;

  ScreenResolution._() : super();
  factory ScreenResolution({
    $core.int? width,
    $core.int? height,
    $core.int? widthinMM,
    $core.int? heightinMM,
  }) {
    final _result = create();
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (widthinMM != null) {
      _result.widthinMM = widthinMM;
    }
    if (heightinMM != null) {
      _result.heightinMM = heightinMM;
    }
    return _result;
  }
  factory ScreenResolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScreenResolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScreenResolution clone() => ScreenResolution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScreenResolution copyWith(void Function(ScreenResolution) updates) => super.copyWith((message) => updates(message as ScreenResolution)) as ScreenResolution; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScreenResolution create() => ScreenResolution._();
  ScreenResolution createEmptyInstance() => create();
  static $pb.PbList<ScreenResolution> createRepeated() => $pb.PbList<ScreenResolution>();
  @$core.pragma('dart2js:noInline')
  static ScreenResolution getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScreenResolution>(create);
  static ScreenResolution? _defaultInstance;

  @$pb.TagNumber(5)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(5)
  set width($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(5)
  void clearWidth() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(6)
  set height($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(6)
  void clearHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get widthinMM => $_getIZ(2);
  @$pb.TagNumber(7)
  set widthinMM($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(7)
  $core.bool hasWidthinMM() => $_has(2);
  @$pb.TagNumber(7)
  void clearWidthinMM() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get heightinMM => $_getIZ(3);
  @$pb.TagNumber(8)
  set heightinMM($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeightinMM() => $_has(3);
  @$pb.TagNumber(8)
  void clearHeightinMM() => clearField(8);
}

class CalibImprove extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibImprove', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', $pb.PbFieldType.O3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopHID', protoName: 'stopHID')
    ..hasRequiredFields = false
  ;

  CalibImprove._() : super();
  factory CalibImprove({
    $core.int? rating,
    $core.bool? stopHID,
  }) {
    final _result = create();
    if (rating != null) {
      _result.rating = rating;
    }
    if (stopHID != null) {
      _result.stopHID = stopHID;
    }
    return _result;
  }
  factory CalibImprove.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibImprove.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibImprove clone() => CalibImprove()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibImprove copyWith(void Function(CalibImprove) updates) => super.copyWith((message) => updates(message as CalibImprove)) as CalibImprove; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibImprove create() => CalibImprove._();
  CalibImprove createEmptyInstance() => create();
  static $pb.PbList<CalibImprove> createRepeated() => $pb.PbList<CalibImprove>();
  @$core.pragma('dart2js:noInline')
  static CalibImprove getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibImprove>(create);
  static CalibImprove? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rating => $_getIZ(0);
  @$pb.TagNumber(1)
  set rating($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get stopHID => $_getBF(1);
  @$pb.TagNumber(2)
  set stopHID($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStopHID() => $_has(1);
  @$pb.TagNumber(2)
  void clearStopHID() => clearField(2);
}

class CalibConfirm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibConfirm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmed')
    ..hasRequiredFields = false
  ;

  CalibConfirm._() : super();
  factory CalibConfirm({
    $core.bool? confirmed,
  }) {
    final _result = create();
    if (confirmed != null) {
      _result.confirmed = confirmed;
    }
    return _result;
  }
  factory CalibConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibConfirm clone() => CalibConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibConfirm copyWith(void Function(CalibConfirm) updates) => super.copyWith((message) => updates(message as CalibConfirm)) as CalibConfirm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibConfirm create() => CalibConfirm._();
  CalibConfirm createEmptyInstance() => create();
  static $pb.PbList<CalibConfirm> createRepeated() => $pb.PbList<CalibConfirm>();
  @$core.pragma('dart2js:noInline')
  static CalibConfirm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibConfirm>(create);
  static CalibConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get confirmed => $_getBF(0);
  @$pb.TagNumber(1)
  set confirmed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfirmed() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmed() => clearField(1);
}

enum CalibMessages_Message {
  calibControl, 
  calibPoint, 
  calibQuality, 
  notSet
}

class CalibMessages extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CalibMessages_Message> _CalibMessages_MessageByTag = {
    1 : CalibMessages_Message.calibControl,
    2 : CalibMessages_Message.calibPoint,
    3 : CalibMessages_Message.calibQuality,
    0 : CalibMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibMessages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibControl', protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibPoint', protoName: 'calibPoint', subBuilder: CalibPoint.create)
    ..aOM<CalibQuality>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calibQuality', protoName: 'calibQuality', subBuilder: CalibQuality.create)
    ..hasRequiredFields = false
  ;

  CalibMessages._() : super();
  factory CalibMessages({
    CalibControl? calibControl,
    CalibPoint? calibPoint,
    CalibQuality? calibQuality,
  }) {
    final _result = create();
    if (calibControl != null) {
      _result.calibControl = calibControl;
    }
    if (calibPoint != null) {
      _result.calibPoint = calibPoint;
    }
    if (calibQuality != null) {
      _result.calibQuality = calibQuality;
    }
    return _result;
  }
  factory CalibMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibMessages clone() => CalibMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibMessages copyWith(void Function(CalibMessages) updates) => super.copyWith((message) => updates(message as CalibMessages)) as CalibMessages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibMessages create() => CalibMessages._();
  CalibMessages createEmptyInstance() => create();
  static $pb.PbList<CalibMessages> createRepeated() => $pb.PbList<CalibMessages>();
  @$core.pragma('dart2js:noInline')
  static CalibMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibMessages>(create);
  static CalibMessages? _defaultInstance;

  CalibMessages_Message whichMessage() => _CalibMessages_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalibControl get calibControl => $_getN(0);
  @$pb.TagNumber(1)
  set calibControl(CalibControl v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCalibControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibControl() => clearField(1);
  @$pb.TagNumber(1)
  CalibControl ensureCalibControl() => $_ensure(0);

  @$pb.TagNumber(2)
  CalibPoint get calibPoint => $_getN(1);
  @$pb.TagNumber(2)
  set calibPoint(CalibPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalibPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalibPoint() => clearField(2);
  @$pb.TagNumber(2)
  CalibPoint ensureCalibPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  CalibQuality get calibQuality => $_getN(2);
  @$pb.TagNumber(3)
  set calibQuality(CalibQuality v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalibQuality() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalibQuality() => clearField(3);
  @$pb.TagNumber(3)
  CalibQuality ensureCalibQuality() => $_ensure(2);
}

class Point extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Point', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Point._() : super();
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    return _result;
  }
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class CalibPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..aOM<Point>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentPoint', protoName: 'currentPoint', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  CalibPoint._() : super();
  factory CalibPoint({
    $core.int? count,
    Point? currentPoint,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (currentPoint != null) {
      _result.currentPoint = currentPoint;
    }
    return _result;
  }
  factory CalibPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibPoint clone() => CalibPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibPoint copyWith(void Function(CalibPoint) updates) => super.copyWith((message) => updates(message as CalibPoint)) as CalibPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibPoint create() => CalibPoint._();
  CalibPoint createEmptyInstance() => create();
  static $pb.PbList<CalibPoint> createRepeated() => $pb.PbList<CalibPoint>();
  @$core.pragma('dart2js:noInline')
  static CalibPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibPoint>(create);
  static CalibPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  Point get currentPoint => $_getN(1);
  @$pb.TagNumber(2)
  set currentPoint(Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPoint() => clearField(2);
  @$pb.TagNumber(2)
  Point ensureCurrentPoint() => $_ensure(1);
}

class CalibQuality extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CalibQuality', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quality', $pb.PbFieldType.OD)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qualitys', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  CalibQuality._() : super();
  factory CalibQuality({
    $core.double? quality,
    $core.Iterable<$core.double>? qualitys,
  }) {
    final _result = create();
    if (quality != null) {
      _result.quality = quality;
    }
    if (qualitys != null) {
      _result.qualitys.addAll(qualitys);
    }
    return _result;
  }
  factory CalibQuality.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibQuality.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibQuality clone() => CalibQuality()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibQuality copyWith(void Function(CalibQuality) updates) => super.copyWith((message) => updates(message as CalibQuality)) as CalibQuality; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalibQuality create() => CalibQuality._();
  CalibQuality createEmptyInstance() => create();
  static $pb.PbList<CalibQuality> createRepeated() => $pb.PbList<CalibQuality>();
  @$core.pragma('dart2js:noInline')
  static CalibQuality getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibQuality>(create);
  static CalibQuality? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get quality => $_getN(0);
  @$pb.TagNumber(1)
  set quality($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuality() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuality() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.double> get qualitys => $_getList(1);
}

class PositioningMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PositioningMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOM<Point>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftEye', protoName: 'leftEye', subBuilder: Point.create)
    ..aOM<Point>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightEye', protoName: 'rightEye', subBuilder: Point.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qualityDepth', $pb.PbFieldType.O3, protoName: 'qualityDepth')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qualitySides', $pb.PbFieldType.O3, protoName: 'qualitySides')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qualityXAxis', $pb.PbFieldType.O3, protoName: 'qualityXAxis')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qualityYAxis', $pb.PbFieldType.O3, protoName: 'qualityYAxis')
    ..hasRequiredFields = false
  ;

  PositioningMessage._() : super();
  factory PositioningMessage({
    Point? leftEye,
    Point? rightEye,
    $core.int? qualityDepth,
    $core.int? qualitySides,
    $core.int? qualityXAxis,
    $core.int? qualityYAxis,
  }) {
    final _result = create();
    if (leftEye != null) {
      _result.leftEye = leftEye;
    }
    if (rightEye != null) {
      _result.rightEye = rightEye;
    }
    if (qualityDepth != null) {
      _result.qualityDepth = qualityDepth;
    }
    if (qualitySides != null) {
      _result.qualitySides = qualitySides;
    }
    if (qualityXAxis != null) {
      _result.qualityXAxis = qualityXAxis;
    }
    if (qualityYAxis != null) {
      _result.qualityYAxis = qualityYAxis;
    }
    return _result;
  }
  factory PositioningMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositioningMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositioningMessage clone() => PositioningMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositioningMessage copyWith(void Function(PositioningMessage) updates) => super.copyWith((message) => updates(message as PositioningMessage)) as PositioningMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PositioningMessage create() => PositioningMessage._();
  PositioningMessage createEmptyInstance() => create();
  static $pb.PbList<PositioningMessage> createRepeated() => $pb.PbList<PositioningMessage>();
  @$core.pragma('dart2js:noInline')
  static PositioningMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositioningMessage>(create);
  static PositioningMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Point get leftEye => $_getN(0);
  @$pb.TagNumber(1)
  set leftEye(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftEye() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftEye() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureLeftEye() => $_ensure(0);

  @$pb.TagNumber(2)
  Point get rightEye => $_getN(1);
  @$pb.TagNumber(2)
  set rightEye(Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightEye() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightEye() => clearField(2);
  @$pb.TagNumber(2)
  Point ensureRightEye() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get qualityDepth => $_getIZ(2);
  @$pb.TagNumber(3)
  set qualityDepth($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQualityDepth() => $_has(2);
  @$pb.TagNumber(3)
  void clearQualityDepth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get qualitySides => $_getIZ(3);
  @$pb.TagNumber(4)
  set qualitySides($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQualitySides() => $_has(3);
  @$pb.TagNumber(4)
  void clearQualitySides() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get qualityXAxis => $_getIZ(4);
  @$pb.TagNumber(5)
  set qualityXAxis($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQualityXAxis() => $_has(4);
  @$pb.TagNumber(5)
  void clearQualityXAxis() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get qualityYAxis => $_getIZ(5);
  @$pb.TagNumber(6)
  set qualityYAxis($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQualityYAxis() => $_has(5);
  @$pb.TagNumber(6)
  void clearQualityYAxis() => clearField(6);
}

class Options extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Options', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stream')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enablePause', protoName: 'enablePause')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pause')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guidance')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableStandby', protoName: 'enableStandby')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableMouse', protoName: 'disableMouse')
    ..aOM<FilterOptions>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: FilterOptions.create)
    ..aOM<IPadOptions>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iPadOptions', protoName: 'iPadOptions', subBuilder: IPadOptions.create)
    ..aOM<ScreenResolution>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'res', subBuilder: ScreenResolution.create)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hp')
    ..hasRequiredFields = false
  ;

  Options._() : super();
  factory Options({
    $core.bool? stream,
    $core.bool? enablePause,
    $core.bool? pause,
    $core.bool? guidance,
    $core.bool? enableStandby,
    $core.bool? disableMouse,
    FilterOptions? filter,
    IPadOptions? iPadOptions,
    ScreenResolution? res,
    $core.bool? hp,
  }) {
    final _result = create();
    if (stream != null) {
      _result.stream = stream;
    }
    if (enablePause != null) {
      _result.enablePause = enablePause;
    }
    if (pause != null) {
      _result.pause = pause;
    }
    if (guidance != null) {
      _result.guidance = guidance;
    }
    if (enableStandby != null) {
      _result.enableStandby = enableStandby;
    }
    if (disableMouse != null) {
      _result.disableMouse = disableMouse;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (iPadOptions != null) {
      _result.iPadOptions = iPadOptions;
    }
    if (res != null) {
      _result.res = res;
    }
    if (hp != null) {
      _result.hp = hp;
    }
    return _result;
  }
  factory Options.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Options.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Options clone() => Options()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Options copyWith(void Function(Options) updates) => super.copyWith((message) => updates(message as Options)) as Options; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Options create() => Options._();
  Options createEmptyInstance() => create();
  static $pb.PbList<Options> createRepeated() => $pb.PbList<Options>();
  @$core.pragma('dart2js:noInline')
  static Options getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Options>(create);
  static Options? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get stream => $_getBF(0);
  @$pb.TagNumber(1)
  set stream($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStream() => $_has(0);
  @$pb.TagNumber(1)
  void clearStream() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enablePause => $_getBF(1);
  @$pb.TagNumber(2)
  set enablePause($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnablePause() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnablePause() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get pause => $_getBF(2);
  @$pb.TagNumber(3)
  set pause($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPause() => $_has(2);
  @$pb.TagNumber(3)
  void clearPause() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get guidance => $_getBF(3);
  @$pb.TagNumber(4)
  set guidance($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGuidance() => $_has(3);
  @$pb.TagNumber(4)
  void clearGuidance() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enableStandby => $_getBF(4);
  @$pb.TagNumber(5)
  set enableStandby($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnableStandby() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnableStandby() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get disableMouse => $_getBF(5);
  @$pb.TagNumber(6)
  set disableMouse($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDisableMouse() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisableMouse() => clearField(6);

  @$pb.TagNumber(7)
  FilterOptions get filter => $_getN(6);
  @$pb.TagNumber(7)
  set filter(FilterOptions v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFilter() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilter() => clearField(7);
  @$pb.TagNumber(7)
  FilterOptions ensureFilter() => $_ensure(6);

  @$pb.TagNumber(8)
  IPadOptions get iPadOptions => $_getN(7);
  @$pb.TagNumber(8)
  set iPadOptions(IPadOptions v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasIPadOptions() => $_has(7);
  @$pb.TagNumber(8)
  void clearIPadOptions() => clearField(8);
  @$pb.TagNumber(8)
  IPadOptions ensureIPadOptions() => $_ensure(7);

  @$pb.TagNumber(9)
  ScreenResolution get res => $_getN(8);
  @$pb.TagNumber(9)
  set res(ScreenResolution v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasRes() => $_has(8);
  @$pb.TagNumber(9)
  void clearRes() => clearField(9);
  @$pb.TagNumber(9)
  ScreenResolution ensureRes() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.bool get hp => $_getBF(9);
  @$pb.TagNumber(10)
  set hp($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHp() => $_has(9);
  @$pb.TagNumber(10)
  void clearHp() => clearField(10);
}

class IPadOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IPadOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isOldiOS', protoName: 'isOldiOS')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isNotZommed', protoName: 'isNotZommed')
    ..e<IPadOptions_iPadModel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model', $pb.PbFieldType.OE, defaultOrMaker: IPadOptions_iPadModel.iPad8_5, valueOf: IPadOptions_iPadModel.valueOf, enumValues: IPadOptions_iPadModel.values)
    ..hasRequiredFields = false
  ;

  IPadOptions._() : super();
  factory IPadOptions({
    $core.bool? isOldiOS,
    $core.bool? isNotZommed,
    IPadOptions_iPadModel? model,
  }) {
    final _result = create();
    if (isOldiOS != null) {
      _result.isOldiOS = isOldiOS;
    }
    if (isNotZommed != null) {
      _result.isNotZommed = isNotZommed;
    }
    if (model != null) {
      _result.model = model;
    }
    return _result;
  }
  factory IPadOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPadOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPadOptions clone() => IPadOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPadOptions copyWith(void Function(IPadOptions) updates) => super.copyWith((message) => updates(message as IPadOptions)) as IPadOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IPadOptions create() => IPadOptions._();
  IPadOptions createEmptyInstance() => create();
  static $pb.PbList<IPadOptions> createRepeated() => $pb.PbList<IPadOptions>();
  @$core.pragma('dart2js:noInline')
  static IPadOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPadOptions>(create);
  static IPadOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOldiOS => $_getBF(0);
  @$pb.TagNumber(1)
  set isOldiOS($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOldiOS() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOldiOS() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isNotZommed => $_getBF(1);
  @$pb.TagNumber(2)
  set isNotZommed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsNotZommed() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNotZommed() => clearField(2);

  @$pb.TagNumber(3)
  IPadOptions_iPadModel get model => $_getN(2);
  @$pb.TagNumber(3)
  set model(IPadOptions_iPadModel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearModel() => clearField(3);
}

class DeviceVersions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceVersions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firmware')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eyetracker')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calib')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'base')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serial', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skyleType', $pb.PbFieldType.O3, protoName: 'skyleType')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDemo', protoName: 'isDemo')
    ..hasRequiredFields = false
  ;

  DeviceVersions._() : super();
  factory DeviceVersions({
    $core.String? firmware,
    $core.String? eyetracker,
    $core.String? calib,
    $core.String? base,
    $fixnum.Int64? serial,
    $core.int? skyleType,
    $core.bool? isDemo,
  }) {
    final _result = create();
    if (firmware != null) {
      _result.firmware = firmware;
    }
    if (eyetracker != null) {
      _result.eyetracker = eyetracker;
    }
    if (calib != null) {
      _result.calib = calib;
    }
    if (base != null) {
      _result.base = base;
    }
    if (serial != null) {
      _result.serial = serial;
    }
    if (skyleType != null) {
      _result.skyleType = skyleType;
    }
    if (isDemo != null) {
      _result.isDemo = isDemo;
    }
    return _result;
  }
  factory DeviceVersions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceVersions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceVersions clone() => DeviceVersions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceVersions copyWith(void Function(DeviceVersions) updates) => super.copyWith((message) => updates(message as DeviceVersions)) as DeviceVersions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceVersions create() => DeviceVersions._();
  DeviceVersions createEmptyInstance() => create();
  static $pb.PbList<DeviceVersions> createRepeated() => $pb.PbList<DeviceVersions>();
  @$core.pragma('dart2js:noInline')
  static DeviceVersions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceVersions>(create);
  static DeviceVersions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firmware => $_getSZ(0);
  @$pb.TagNumber(1)
  set firmware($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirmware() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirmware() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eyetracker => $_getSZ(1);
  @$pb.TagNumber(2)
  set eyetracker($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEyetracker() => $_has(1);
  @$pb.TagNumber(2)
  void clearEyetracker() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get calib => $_getSZ(2);
  @$pb.TagNumber(3)
  set calib($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalib() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalib() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get base => $_getSZ(3);
  @$pb.TagNumber(4)
  set base($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBase() => $_has(3);
  @$pb.TagNumber(4)
  void clearBase() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get serial => $_getI64(4);
  @$pb.TagNumber(5)
  set serial($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSerial() => $_has(4);
  @$pb.TagNumber(5)
  void clearSerial() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get skyleType => $_getIZ(5);
  @$pb.TagNumber(6)
  set skyleType($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSkyleType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSkyleType() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isDemo => $_getBF(6);
  @$pb.TagNumber(7)
  set isDemo($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsDemo() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsDemo() => clearField(7);
}

class ButtonActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ButtonActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singleClick', protoName: 'singleClick')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'holdClick', protoName: 'holdClick')
    ..hasRequiredFields = false
  ;

  ButtonActions._() : super();
  factory ButtonActions({
    $core.String? singleClick,
    $core.String? doubleClick,
    $core.String? holdClick,
  }) {
    final _result = create();
    if (singleClick != null) {
      _result.singleClick = singleClick;
    }
    if (doubleClick != null) {
      _result.doubleClick = doubleClick;
    }
    if (holdClick != null) {
      _result.holdClick = holdClick;
    }
    return _result;
  }
  factory ButtonActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ButtonActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ButtonActions clone() => ButtonActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ButtonActions copyWith(void Function(ButtonActions) updates) => super.copyWith((message) => updates(message as ButtonActions)) as ButtonActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ButtonActions create() => ButtonActions._();
  ButtonActions createEmptyInstance() => create();
  static $pb.PbList<ButtonActions> createRepeated() => $pb.PbList<ButtonActions>();
  @$core.pragma('dart2js:noInline')
  static ButtonActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ButtonActions>(create);
  static ButtonActions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get singleClick => $_getSZ(0);
  @$pb.TagNumber(1)
  set singleClick($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingleClick() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleClick() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get doubleClick => $_getSZ(1);
  @$pb.TagNumber(2)
  set doubleClick($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoubleClick() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleClick() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get holdClick => $_getSZ(2);
  @$pb.TagNumber(3)
  set holdClick($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHoldClick() => $_has(2);
  @$pb.TagNumber(3)
  void clearHoldClick() => clearField(3);
}

class Button extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Button', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPresent', protoName: 'isPresent')
    ..aOM<ButtonActions>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonActions', protoName: 'buttonActions', subBuilder: ButtonActions.create)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availableActions', protoName: 'availableActions')
    ..hasRequiredFields = false
  ;

  Button._() : super();
  factory Button({
    $core.bool? isPresent,
    ButtonActions? buttonActions,
    $core.Iterable<$core.String>? availableActions,
  }) {
    final _result = create();
    if (isPresent != null) {
      _result.isPresent = isPresent;
    }
    if (buttonActions != null) {
      _result.buttonActions = buttonActions;
    }
    if (availableActions != null) {
      _result.availableActions.addAll(availableActions);
    }
    return _result;
  }
  factory Button.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Button.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Button clone() => Button()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Button copyWith(void Function(Button) updates) => super.copyWith((message) => updates(message as Button)) as Button; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Button create() => Button._();
  Button createEmptyInstance() => create();
  static $pb.PbList<Button> createRepeated() => $pb.PbList<Button>();
  @$core.pragma('dart2js:noInline')
  static Button getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Button>(create);
  static Button? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isPresent => $_getBF(0);
  @$pb.TagNumber(1)
  set isPresent($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsPresent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPresent() => clearField(1);

  @$pb.TagNumber(2)
  ButtonActions get buttonActions => $_getN(1);
  @$pb.TagNumber(2)
  set buttonActions(ButtonActions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasButtonActions() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonActions() => clearField(2);
  @$pb.TagNumber(2)
  ButtonActions ensureButtonActions() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get availableActions => $_getList(2);
}

class FilterOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FilterOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixationFilter', $pb.PbFieldType.O3, protoName: 'fixationFilter')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gazeFilter', $pb.PbFieldType.O3, protoName: 'gazeFilter')
    ..hasRequiredFields = false
  ;

  FilterOptions._() : super();
  factory FilterOptions({
    $core.int? fixationFilter,
    $core.int? gazeFilter,
  }) {
    final _result = create();
    if (fixationFilter != null) {
      _result.fixationFilter = fixationFilter;
    }
    if (gazeFilter != null) {
      _result.gazeFilter = gazeFilter;
    }
    return _result;
  }
  factory FilterOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilterOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilterOptions clone() => FilterOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilterOptions copyWith(void Function(FilterOptions) updates) => super.copyWith((message) => updates(message as FilterOptions)) as FilterOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FilterOptions create() => FilterOptions._();
  FilterOptions createEmptyInstance() => create();
  static $pb.PbList<FilterOptions> createRepeated() => $pb.PbList<FilterOptions>();
  @$core.pragma('dart2js:noInline')
  static FilterOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilterOptions>(create);
  static FilterOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fixationFilter => $_getIZ(0);
  @$pb.TagNumber(1)
  set fixationFilter($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFixationFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixationFilter() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get gazeFilter => $_getIZ(1);
  @$pb.TagNumber(2)
  set gazeFilter($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGazeFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearGazeFilter() => clearField(2);
}

