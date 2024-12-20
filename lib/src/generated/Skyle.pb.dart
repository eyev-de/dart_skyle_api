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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Skyle.pbenum.dart';
import 'google/protobuf/empty.pb.dart' as $1;

export 'Skyle.pbenum.dart';

/// *
///  Single image in grayscale raw bytes
class RawImage extends $pb.GeneratedMessage {
  factory RawImage({
    $core.int? width,
    $core.int? height,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  RawImage._() : super();
  factory RawImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RawImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawImage clone() => RawImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawImage copyWith(void Function(RawImage) updates) => super.copyWith((message) => updates(message as RawImage)) as RawImage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RawImage create() => RawImage._();
  RawImage createEmptyInstance() => create();
  static $pb.PbList<RawImage> createRepeated() => $pb.PbList<RawImage>();
  @$core.pragma('dart2js:noInline')
  static RawImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawImage>(create);
  static RawImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(1)
  set width($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

/// *
///  Message to indicate a trigger
class TriggerMessage extends $pb.GeneratedMessage {
  factory TriggerMessage({
    $core.bool? singleClick,
    $core.bool? doubleClick,
    $core.bool? holdClick,
    $core.bool? fixation,
  }) {
    final $result = create();
    if (singleClick != null) {
      $result.singleClick = singleClick;
    }
    if (doubleClick != null) {
      $result.doubleClick = doubleClick;
    }
    if (holdClick != null) {
      $result.holdClick = holdClick;
    }
    if (fixation != null) {
      $result.fixation = fixation;
    }
    return $result;
  }
  TriggerMessage._() : super();
  factory TriggerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TriggerMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'singleClick', protoName: 'singleClick')
    ..aOB(2, _omitFieldNames ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOB(3, _omitFieldNames ? '' : 'holdClick', protoName: 'holdClick')
    ..aOB(4, _omitFieldNames ? '' : 'fixation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TriggerMessage clone() => TriggerMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TriggerMessage copyWith(void Function(TriggerMessage) updates) => super.copyWith((message) => updates(message as TriggerMessage)) as TriggerMessage;

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

/// *
///  Message to request resets
class ResetMessage extends $pb.GeneratedMessage {
  factory ResetMessage({
    $core.bool? services,
    $core.bool? device,
    $core.bool? data,
  }) {
    final $result = create();
    if (services != null) {
      $result.services = services;
    }
    if (device != null) {
      $result.device = device;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  ResetMessage._() : super();
  factory ResetMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'services')
    ..aOB(2, _omitFieldNames ? '' : 'device')
    ..aOB(3, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetMessage clone() => ResetMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetMessage copyWith(void Function(ResetMessage) updates) => super.copyWith((message) => updates(message as ResetMessage)) as ResetMessage;

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

/// *
///  Message describing a user profile
class Profile extends $pb.GeneratedMessage {
  factory Profile({
    $core.int? id,
    $core.String? name,
    Profile_Skill? skill,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (skill != null) {
      $result.skill = skill;
    }
    return $result;
  }
  Profile._() : super();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Profile', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<Profile_Skill>(3, _omitFieldNames ? '' : 'skill', $pb.PbFieldType.OE, defaultOrMaker: Profile_Skill.Low, valueOf: Profile_Skill.valueOf, enumValues: Profile_Skill.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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

/// *
///  General status message
class StatusMessage extends $pb.GeneratedMessage {
  factory StatusMessage({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  StatusMessage._() : super();
  factory StatusMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusMessage clone() => StatusMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusMessage copyWith(void Function(StatusMessage) updates) => super.copyWith((message) => updates(message as StatusMessage)) as StatusMessage;

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

/// *
///  Message to wrap the options message: either empty or filled with options
class OptionMessage extends $pb.GeneratedMessage {
  factory OptionMessage({
    $1.Empty? empty,
    Options? options,
  }) {
    final $result = create();
    if (empty != null) {
      $result.empty = empty;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  OptionMessage._() : super();
  factory OptionMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OptionMessage_Message> _OptionMessage_MessageByTag = {
    1 : OptionMessage_Message.empty,
    2 : OptionMessage_Message.options,
    0 : OptionMessage_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Empty>(1, _omitFieldNames ? '' : 'empty', subBuilder: $1.Empty.create)
    ..aOM<Options>(2, _omitFieldNames ? '' : 'options', subBuilder: Options.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionMessage clone() => OptionMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionMessage copyWith(void Function(OptionMessage) updates) => super.copyWith((message) => updates(message as OptionMessage)) as OptionMessage;

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

enum CalibControlMessages_Message {
  calibControl, 
  calibImprove, 
  calibConfirm, 
  notSet
}

/// *
///  Message wrapping possible calibration control messages for a client
class CalibControlMessages extends $pb.GeneratedMessage {
  factory CalibControlMessages({
    CalibControl? calibControl,
    CalibImprove? calibImprove,
    CalibConfirm? calibConfirm,
  }) {
    final $result = create();
    if (calibControl != null) {
      $result.calibControl = calibControl;
    }
    if (calibImprove != null) {
      $result.calibImprove = calibImprove;
    }
    if (calibConfirm != null) {
      $result.calibConfirm = calibConfirm;
    }
    return $result;
  }
  CalibControlMessages._() : super();
  factory CalibControlMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibControlMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CalibControlMessages_Message> _CalibControlMessages_MessageByTag = {
    1 : CalibControlMessages_Message.calibControl,
    2 : CalibControlMessages_Message.calibImprove,
    3 : CalibControlMessages_Message.calibConfirm,
    0 : CalibControlMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibControlMessages', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, _omitFieldNames ? '' : 'calibControl', protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibImprove>(2, _omitFieldNames ? '' : 'calibImprove', protoName: 'calibImprove', subBuilder: CalibImprove.create)
    ..aOM<CalibConfirm>(3, _omitFieldNames ? '' : 'calibConfirm', protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibControlMessages clone() => CalibControlMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibControlMessages copyWith(void Function(CalibControlMessages) updates) => super.copyWith((message) => updates(message as CalibControlMessages)) as CalibControlMessages;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibControlMessages create() => CalibControlMessages._();
  CalibControlMessages createEmptyInstance() => create();
  static $pb.PbList<CalibControlMessages> createRepeated() => $pb.PbList<CalibControlMessages>();
  @$core.pragma('dart2js:noInline')
  static CalibControlMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibControlMessages>(create);
  static CalibControlMessages? _defaultInstance;

  CalibControlMessages_Message whichMessage() => _CalibControlMessages_MessageByTag[$_whichOneof(0)]!;
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

enum CalibCursorMessages_Message {
  empty, 
  calibConfirm, 
  notSet
}

/// *
///  Message wrapping possible cursor calibration messages for a client
class CalibCursorMessages extends $pb.GeneratedMessage {
  factory CalibCursorMessages({
    $1.Empty? empty,
    CalibConfirm? calibConfirm,
  }) {
    final $result = create();
    if (empty != null) {
      $result.empty = empty;
    }
    if (calibConfirm != null) {
      $result.calibConfirm = calibConfirm;
    }
    return $result;
  }
  CalibCursorMessages._() : super();
  factory CalibCursorMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibCursorMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CalibCursorMessages_Message> _CalibCursorMessages_MessageByTag = {
    1 : CalibCursorMessages_Message.empty,
    3 : CalibCursorMessages_Message.calibConfirm,
    0 : CalibCursorMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibCursorMessages', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<$1.Empty>(1, _omitFieldNames ? '' : 'empty', subBuilder: $1.Empty.create)
    ..aOM<CalibConfirm>(3, _omitFieldNames ? '' : 'calibConfirm', protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibCursorMessages clone() => CalibCursorMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibCursorMessages copyWith(void Function(CalibCursorMessages) updates) => super.copyWith((message) => updates(message as CalibCursorMessages)) as CalibCursorMessages;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibCursorMessages create() => CalibCursorMessages._();
  CalibCursorMessages createEmptyInstance() => create();
  static $pb.PbList<CalibCursorMessages> createRepeated() => $pb.PbList<CalibCursorMessages>();
  @$core.pragma('dart2js:noInline')
  static CalibCursorMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalibCursorMessages>(create);
  static CalibCursorMessages? _defaultInstance;

  CalibCursorMessages_Message whichMessage() => _CalibCursorMessages_MessageByTag[$_whichOneof(0)]!;
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

/// *
///  Message describing the calibration status
class CalibControl extends $pb.GeneratedMessage {
  factory CalibControl({
    $core.bool? calibrate,
    $core.int? numberOfPoints,
    $core.bool? abort,
    $core.bool? stopHID,
    ScreenResolution? res,
    $core.bool? stepByStep,
    $core.Iterable<$core.int>? calibrationPoints,
  }) {
    final $result = create();
    if (calibrate != null) {
      $result.calibrate = calibrate;
    }
    if (numberOfPoints != null) {
      $result.numberOfPoints = numberOfPoints;
    }
    if (abort != null) {
      $result.abort = abort;
    }
    if (stopHID != null) {
      $result.stopHID = stopHID;
    }
    if (res != null) {
      $result.res = res;
    }
    if (stepByStep != null) {
      $result.stepByStep = stepByStep;
    }
    if (calibrationPoints != null) {
      $result.calibrationPoints.addAll(calibrationPoints);
    }
    return $result;
  }
  CalibControl._() : super();
  factory CalibControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibControl', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'calibrate')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numberOfPoints', $pb.PbFieldType.O3, protoName: 'numberOfPoints')
    ..aOB(3, _omitFieldNames ? '' : 'abort')
    ..aOB(4, _omitFieldNames ? '' : 'stopHID', protoName: 'stopHID')
    ..aOM<ScreenResolution>(5, _omitFieldNames ? '' : 'res', subBuilder: ScreenResolution.create)
    ..aOB(6, _omitFieldNames ? '' : 'stepByStep', protoName: 'stepByStep')
    ..p<$core.int>(7, _omitFieldNames ? '' : 'calibrationPoints', $pb.PbFieldType.K3, protoName: 'calibrationPoints')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibControl clone() => CalibControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibControl copyWith(void Function(CalibControl) updates) => super.copyWith((message) => updates(message as CalibControl)) as CalibControl;

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

  /// Indices of calibration points the user wants for a 9 point or 5 point calibration
  /// The length of calibrationPoints needs to match numberOfPoints
  /// Grid on the monitor:
  /// —————————————————————————
  /// |   0   |   1   |   2   |
  /// |   3   |   4   |   5   |
  /// |   6   |   7   |   8   |
  /// —————————————————————————
  /// examples:
  /// 9 points: [0, 1, 2, 3, 4, 5, 6, 7, 8] (default for 9 points if not supplied)
  /// 9 points: [0, 2, 7, 1, 8, 3, 5, 6, 4]
  /// 5 points: [0, 2, 4, 6, 8] (default for 5 points if not supplied)
  /// 5 points: [0, 2, 6, 8, 4]
  /// 5 points: [0, 8, 2, 6, 4]
  @$pb.TagNumber(7)
  $core.List<$core.int> get calibrationPoints => $_getList(6);
}

/// *
///  Message with screen resolution of the client
class ScreenResolution extends $pb.GeneratedMessage {
  factory ScreenResolution({
    $core.int? width,
    $core.int? height,
    $core.int? widthInMM,
    $core.int? heightInMM,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (widthInMM != null) {
      $result.widthInMM = widthInMM;
    }
    if (heightInMM != null) {
      $result.heightInMM = heightInMM;
    }
    return $result;
  }
  ScreenResolution._() : super();
  factory ScreenResolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScreenResolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScreenResolution', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'widthInMM', $pb.PbFieldType.O3, protoName: 'widthInMM')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'heightInMM', $pb.PbFieldType.O3, protoName: 'heightInMM')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScreenResolution clone() => ScreenResolution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScreenResolution copyWith(void Function(ScreenResolution) updates) => super.copyWith((message) => updates(message as ScreenResolution)) as ScreenResolution;

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
  $core.int get widthInMM => $_getIZ(2);
  @$pb.TagNumber(7)
  set widthInMM($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(7)
  $core.bool hasWidthInMM() => $_has(2);
  @$pb.TagNumber(7)
  void clearWidthInMM() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get heightInMM => $_getIZ(3);
  @$pb.TagNumber(8)
  set heightInMM($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeightInMM() => $_has(3);
  @$pb.TagNumber(8)
  void clearHeightInMM() => clearField(8);
}

/// *
///  Message to improve a calibration
class CalibImprove extends $pb.GeneratedMessage {
  factory CalibImprove({
    $core.int? rating,
    $core.bool? stopHID,
  }) {
    final $result = create();
    if (rating != null) {
      $result.rating = rating;
    }
    if (stopHID != null) {
      $result.stopHID = stopHID;
    }
    return $result;
  }
  CalibImprove._() : super();
  factory CalibImprove.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibImprove.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibImprove', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'stopHID', protoName: 'stopHID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibImprove clone() => CalibImprove()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibImprove copyWith(void Function(CalibImprove) updates) => super.copyWith((message) => updates(message as CalibImprove)) as CalibImprove;

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

/// *
///  Message to confirm a calibration point
class CalibConfirm extends $pb.GeneratedMessage {
  factory CalibConfirm({
    $core.bool? confirmed,
  }) {
    final $result = create();
    if (confirmed != null) {
      $result.confirmed = confirmed;
    }
    return $result;
  }
  CalibConfirm._() : super();
  factory CalibConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibConfirm', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'confirmed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibConfirm clone() => CalibConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibConfirm copyWith(void Function(CalibConfirm) updates) => super.copyWith((message) => updates(message as CalibConfirm)) as CalibConfirm;

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

/// *
///  Message wrapping calibration host messages
class CalibMessages extends $pb.GeneratedMessage {
  factory CalibMessages({
    CalibControl? calibControl,
    CalibPoint? calibPoint,
    CalibQuality? calibQuality,
  }) {
    final $result = create();
    if (calibControl != null) {
      $result.calibControl = calibControl;
    }
    if (calibPoint != null) {
      $result.calibPoint = calibPoint;
    }
    if (calibQuality != null) {
      $result.calibQuality = calibQuality;
    }
    return $result;
  }
  CalibMessages._() : super();
  factory CalibMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CalibMessages_Message> _CalibMessages_MessageByTag = {
    1 : CalibMessages_Message.calibControl,
    2 : CalibMessages_Message.calibPoint,
    3 : CalibMessages_Message.calibQuality,
    0 : CalibMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibMessages', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, _omitFieldNames ? '' : 'calibControl', protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibPoint>(2, _omitFieldNames ? '' : 'calibPoint', protoName: 'calibPoint', subBuilder: CalibPoint.create)
    ..aOM<CalibQuality>(3, _omitFieldNames ? '' : 'calibQuality', protoName: 'calibQuality', subBuilder: CalibQuality.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibMessages clone() => CalibMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibMessages copyWith(void Function(CalibMessages) updates) => super.copyWith((message) => updates(message as CalibMessages)) as CalibMessages;

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

/// *
///  Message for binocular gaze points
class BinocularGaze extends $pb.GeneratedMessage {
  factory BinocularGaze({
    Point? leftGaze,
    Point? rightGaze,
  }) {
    final $result = create();
    if (leftGaze != null) {
      $result.leftGaze = leftGaze;
    }
    if (rightGaze != null) {
      $result.rightGaze = rightGaze;
    }
    return $result;
  }
  BinocularGaze._() : super();
  factory BinocularGaze.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinocularGaze.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BinocularGaze', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'leftGaze', protoName: 'leftGaze', subBuilder: Point.create)
    ..aOM<Point>(2, _omitFieldNames ? '' : 'rightGaze', protoName: 'rightGaze', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinocularGaze clone() => BinocularGaze()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinocularGaze copyWith(void Function(BinocularGaze) updates) => super.copyWith((message) => updates(message as BinocularGaze)) as BinocularGaze;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BinocularGaze create() => BinocularGaze._();
  BinocularGaze createEmptyInstance() => create();
  static $pb.PbList<BinocularGaze> createRepeated() => $pb.PbList<BinocularGaze>();
  @$core.pragma('dart2js:noInline')
  static BinocularGaze getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinocularGaze>(create);
  static BinocularGaze? _defaultInstance;

  @$pb.TagNumber(1)
  Point get leftGaze => $_getN(0);
  @$pb.TagNumber(1)
  set leftGaze(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftGaze() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftGaze() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureLeftGaze() => $_ensure(0);

  @$pb.TagNumber(2)
  Point get rightGaze => $_getN(1);
  @$pb.TagNumber(2)
  set rightGaze(Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightGaze() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightGaze() => clearField(2);
  @$pb.TagNumber(2)
  Point ensureRightGaze() => $_ensure(1);
}

/// *
///  Message for a 2D point
class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  Point._() : super();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Point', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point;

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

/// *
///  Message describing a calibration point
class CalibPoint extends $pb.GeneratedMessage {
  factory CalibPoint({
    $core.int? count,
    Point? currentPoint,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (currentPoint != null) {
      $result.currentPoint = currentPoint;
    }
    return $result;
  }
  CalibPoint._() : super();
  factory CalibPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..aOM<Point>(2, _omitFieldNames ? '' : 'currentPoint', protoName: 'currentPoint', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibPoint clone() => CalibPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibPoint copyWith(void Function(CalibPoint) updates) => super.copyWith((message) => updates(message as CalibPoint)) as CalibPoint;

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

/// *
///  Message describing the quality of a calibration
class CalibQuality extends $pb.GeneratedMessage {
  factory CalibQuality({
    $core.double? quality,
    $core.Iterable<$core.double>? qualities,
  }) {
    final $result = create();
    if (quality != null) {
      $result.quality = quality;
    }
    if (qualities != null) {
      $result.qualities.addAll(qualities);
    }
    return $result;
  }
  CalibQuality._() : super();
  factory CalibQuality.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalibQuality.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalibQuality', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'quality', $pb.PbFieldType.OD)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'qualities', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalibQuality clone() => CalibQuality()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalibQuality copyWith(void Function(CalibQuality) updates) => super.copyWith((message) => updates(message as CalibQuality)) as CalibQuality;

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
  $core.List<$core.double> get qualities => $_getList(1);
}

/// *
///  Message with eye positions and quality indicators
class PositioningMessage extends $pb.GeneratedMessage {
  factory PositioningMessage({
    Point? leftEye,
    Point? rightEye,
    $core.int? distanceQuality,
    $core.int? positioningQuality,
    $core.int? horizontalQuality,
    $core.int? verticalQuality,
  }) {
    final $result = create();
    if (leftEye != null) {
      $result.leftEye = leftEye;
    }
    if (rightEye != null) {
      $result.rightEye = rightEye;
    }
    if (distanceQuality != null) {
      $result.distanceQuality = distanceQuality;
    }
    if (positioningQuality != null) {
      $result.positioningQuality = positioningQuality;
    }
    if (horizontalQuality != null) {
      $result.horizontalQuality = horizontalQuality;
    }
    if (verticalQuality != null) {
      $result.verticalQuality = verticalQuality;
    }
    return $result;
  }
  PositioningMessage._() : super();
  factory PositioningMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositioningMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositioningMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'leftEye', protoName: 'leftEye', subBuilder: Point.create)
    ..aOM<Point>(2, _omitFieldNames ? '' : 'rightEye', protoName: 'rightEye', subBuilder: Point.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'distanceQuality', $pb.PbFieldType.O3, protoName: 'distanceQuality')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'positioningQuality', $pb.PbFieldType.O3, protoName: 'positioningQuality')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'horizontalQuality', $pb.PbFieldType.O3, protoName: 'horizontalQuality')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'verticalQuality', $pb.PbFieldType.O3, protoName: 'verticalQuality')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositioningMessage clone() => PositioningMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositioningMessage copyWith(void Function(PositioningMessage) updates) => super.copyWith((message) => updates(message as PositioningMessage)) as PositioningMessage;

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
  $core.int get distanceQuality => $_getIZ(2);
  @$pb.TagNumber(3)
  set distanceQuality($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistanceQuality() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistanceQuality() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get positioningQuality => $_getIZ(3);
  @$pb.TagNumber(4)
  set positioningQuality($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPositioningQuality() => $_has(3);
  @$pb.TagNumber(4)
  void clearPositioningQuality() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get horizontalQuality => $_getIZ(4);
  @$pb.TagNumber(5)
  set horizontalQuality($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHorizontalQuality() => $_has(4);
  @$pb.TagNumber(5)
  void clearHorizontalQuality() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get verticalQuality => $_getIZ(5);
  @$pb.TagNumber(6)
  set verticalQuality($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVerticalQuality() => $_has(5);
  @$pb.TagNumber(6)
  void clearVerticalQuality() => clearField(6);
}

/// *
///  Option message for configuration
class Options extends $pb.GeneratedMessage {
  factory Options({
    $core.bool? enableVideoStream,
    $core.bool? enableAutoPause,
    $core.bool? enablePause,
    $core.bool? enablePositioningStream,
    $core.bool? enableAutoStandby,
    $core.bool? disableMouse,
    FilterOptions? filter,
    IPadOptions? iPadOptions,
    ScreenResolution? res,
    $core.bool? hp,
    Options_eyeUse? eyeUsage,
    $core.bool? enableTrackingDetails,
  }) {
    final $result = create();
    if (enableVideoStream != null) {
      $result.enableVideoStream = enableVideoStream;
    }
    if (enableAutoPause != null) {
      $result.enableAutoPause = enableAutoPause;
    }
    if (enablePause != null) {
      $result.enablePause = enablePause;
    }
    if (enablePositioningStream != null) {
      $result.enablePositioningStream = enablePositioningStream;
    }
    if (enableAutoStandby != null) {
      $result.enableAutoStandby = enableAutoStandby;
    }
    if (disableMouse != null) {
      $result.disableMouse = disableMouse;
    }
    if (filter != null) {
      $result.filter = filter;
    }
    if (iPadOptions != null) {
      $result.iPadOptions = iPadOptions;
    }
    if (res != null) {
      $result.res = res;
    }
    if (hp != null) {
      $result.hp = hp;
    }
    if (eyeUsage != null) {
      $result.eyeUsage = eyeUsage;
    }
    if (enableTrackingDetails != null) {
      $result.enableTrackingDetails = enableTrackingDetails;
    }
    return $result;
  }
  Options._() : super();
  factory Options.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Options.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Options', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableVideoStream', protoName: 'enableVideoStream')
    ..aOB(2, _omitFieldNames ? '' : 'enableAutoPause', protoName: 'enableAutoPause')
    ..aOB(3, _omitFieldNames ? '' : 'enablePause', protoName: 'enablePause')
    ..aOB(4, _omitFieldNames ? '' : 'enablePositioningStream', protoName: 'enablePositioningStream')
    ..aOB(5, _omitFieldNames ? '' : 'enableAutoStandby', protoName: 'enableAutoStandby')
    ..aOB(6, _omitFieldNames ? '' : 'disableMouse', protoName: 'disableMouse')
    ..aOM<FilterOptions>(7, _omitFieldNames ? '' : 'filter', subBuilder: FilterOptions.create)
    ..aOM<IPadOptions>(8, _omitFieldNames ? '' : 'iPadOptions', protoName: 'iPadOptions', subBuilder: IPadOptions.create)
    ..aOM<ScreenResolution>(9, _omitFieldNames ? '' : 'res', subBuilder: ScreenResolution.create)
    ..aOB(10, _omitFieldNames ? '' : 'hp')
    ..e<Options_eyeUse>(11, _omitFieldNames ? '' : 'eyeUsage', $pb.PbFieldType.OE, protoName: 'eyeUsage', defaultOrMaker: Options_eyeUse.Both, valueOf: Options_eyeUse.valueOf, enumValues: Options_eyeUse.values)
    ..aOB(12, _omitFieldNames ? '' : 'enableTrackingDetails', protoName: 'enableTrackingDetails')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Options clone() => Options()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Options copyWith(void Function(Options) updates) => super.copyWith((message) => updates(message as Options)) as Options;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Options create() => Options._();
  Options createEmptyInstance() => create();
  static $pb.PbList<Options> createRepeated() => $pb.PbList<Options>();
  @$core.pragma('dart2js:noInline')
  static Options getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Options>(create);
  static Options? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enableVideoStream => $_getBF(0);
  @$pb.TagNumber(1)
  set enableVideoStream($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnableVideoStream() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableVideoStream() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enableAutoPause => $_getBF(1);
  @$pb.TagNumber(2)
  set enableAutoPause($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnableAutoPause() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnableAutoPause() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enablePause => $_getBF(2);
  @$pb.TagNumber(3)
  set enablePause($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnablePause() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnablePause() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enablePositioningStream => $_getBF(3);
  @$pb.TagNumber(4)
  set enablePositioningStream($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnablePositioningStream() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnablePositioningStream() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enableAutoStandby => $_getBF(4);
  @$pb.TagNumber(5)
  set enableAutoStandby($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnableAutoStandby() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnableAutoStandby() => clearField(5);

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

  @$pb.TagNumber(11)
  Options_eyeUse get eyeUsage => $_getN(10);
  @$pb.TagNumber(11)
  set eyeUsage(Options_eyeUse v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasEyeUsage() => $_has(10);
  @$pb.TagNumber(11)
  void clearEyeUsage() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get enableTrackingDetails => $_getBF(11);
  @$pb.TagNumber(12)
  set enableTrackingDetails($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEnableTrackingDetails() => $_has(11);
  @$pb.TagNumber(12)
  void clearEnableTrackingDetails() => clearField(12);
}

enum IPadOptions_OptionalModel {
  model, 
  notSet
}

/// *
///  iPad Option message for configuration
class IPadOptions extends $pb.GeneratedMessage {
  factory IPadOptions({
    $core.bool? isOldiOS,
    $core.bool? isNotZoomed,
    IPadOptions_iPadModel? model,
  }) {
    final $result = create();
    if (isOldiOS != null) {
      $result.isOldiOS = isOldiOS;
    }
    if (isNotZoomed != null) {
      $result.isNotZoomed = isNotZoomed;
    }
    if (model != null) {
      $result.model = model;
    }
    return $result;
  }
  IPadOptions._() : super();
  factory IPadOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPadOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, IPadOptions_OptionalModel> _IPadOptions_OptionalModelByTag = {
    3 : IPadOptions_OptionalModel.model,
    0 : IPadOptions_OptionalModel.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPadOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..oo(0, [3])
    ..aOB(1, _omitFieldNames ? '' : 'isOldiOS', protoName: 'isOldiOS')
    ..aOB(2, _omitFieldNames ? '' : 'isNotZoomed', protoName: 'isNotZoomed')
    ..e<IPadOptions_iPadModel>(3, _omitFieldNames ? '' : 'model', $pb.PbFieldType.OE, defaultOrMaker: IPadOptions_iPadModel.IPad8_5, valueOf: IPadOptions_iPadModel.valueOf, enumValues: IPadOptions_iPadModel.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPadOptions clone() => IPadOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPadOptions copyWith(void Function(IPadOptions) updates) => super.copyWith((message) => updates(message as IPadOptions)) as IPadOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPadOptions create() => IPadOptions._();
  IPadOptions createEmptyInstance() => create();
  static $pb.PbList<IPadOptions> createRepeated() => $pb.PbList<IPadOptions>();
  @$core.pragma('dart2js:noInline')
  static IPadOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPadOptions>(create);
  static IPadOptions? _defaultInstance;

  IPadOptions_OptionalModel whichOptionalModel() => _IPadOptions_OptionalModelByTag[$_whichOneof(0)]!;
  void clearOptionalModel() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get isOldiOS => $_getBF(0);
  @$pb.TagNumber(1)
  set isOldiOS($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOldiOS() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOldiOS() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isNotZoomed => $_getBF(1);
  @$pb.TagNumber(2)
  set isNotZoomed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsNotZoomed() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNotZoomed() => clearField(2);

  @$pb.TagNumber(3)
  IPadOptions_iPadModel get model => $_getN(2);
  @$pb.TagNumber(3)
  set model(IPadOptions_iPadModel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearModel() => clearField(3);
}

/// *
///  Message containing all build versions
class DeviceVersions extends $pb.GeneratedMessage {
  factory DeviceVersions({
    $core.String? firmware,
    $core.String? eyetracker,
    $core.String? calib,
    $core.String? base,
    $fixnum.Int64? serial,
    $core.int? skyleType,
    $core.bool? isDemo,
  }) {
    final $result = create();
    if (firmware != null) {
      $result.firmware = firmware;
    }
    if (eyetracker != null) {
      $result.eyetracker = eyetracker;
    }
    if (calib != null) {
      $result.calib = calib;
    }
    if (base != null) {
      $result.base = base;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    if (skyleType != null) {
      $result.skyleType = skyleType;
    }
    if (isDemo != null) {
      $result.isDemo = isDemo;
    }
    return $result;
  }
  DeviceVersions._() : super();
  factory DeviceVersions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceVersions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceVersions', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firmware')
    ..aOS(2, _omitFieldNames ? '' : 'eyetracker')
    ..aOS(3, _omitFieldNames ? '' : 'calib')
    ..aOS(4, _omitFieldNames ? '' : 'base')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'serial', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'skyleType', $pb.PbFieldType.O3, protoName: 'skyleType')
    ..aOB(7, _omitFieldNames ? '' : 'isDemo', protoName: 'isDemo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceVersions clone() => DeviceVersions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceVersions copyWith(void Function(DeviceVersions) updates) => super.copyWith((message) => updates(message as DeviceVersions)) as DeviceVersions;

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

/// *
///  Representing the three available button actions
class ButtonActions extends $pb.GeneratedMessage {
  factory ButtonActions({
    $core.String? singleClick,
    $core.String? doubleClick,
    $core.String? holdClick,
  }) {
    final $result = create();
    if (singleClick != null) {
      $result.singleClick = singleClick;
    }
    if (doubleClick != null) {
      $result.doubleClick = doubleClick;
    }
    if (holdClick != null) {
      $result.holdClick = holdClick;
    }
    return $result;
  }
  ButtonActions._() : super();
  factory ButtonActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ButtonActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ButtonActions', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'singleClick', protoName: 'singleClick')
    ..aOS(2, _omitFieldNames ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOS(3, _omitFieldNames ? '' : 'holdClick', protoName: 'holdClick')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ButtonActions clone() => ButtonActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ButtonActions copyWith(void Function(ButtonActions) updates) => super.copyWith((message) => updates(message as ButtonActions)) as ButtonActions;

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

/// *
///  Button message
class Button extends $pb.GeneratedMessage {
  factory Button({
    $core.bool? isPresent,
    ButtonActions? buttonActions,
    $core.Iterable<$core.String>? availableActions,
  }) {
    final $result = create();
    if (isPresent != null) {
      $result.isPresent = isPresent;
    }
    if (buttonActions != null) {
      $result.buttonActions = buttonActions;
    }
    if (availableActions != null) {
      $result.availableActions.addAll(availableActions);
    }
    return $result;
  }
  Button._() : super();
  factory Button.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Button.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Button', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isPresent', protoName: 'isPresent')
    ..aOM<ButtonActions>(2, _omitFieldNames ? '' : 'buttonActions', protoName: 'buttonActions', subBuilder: ButtonActions.create)
    ..pPS(3, _omitFieldNames ? '' : 'availableActions', protoName: 'availableActions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Button clone() => Button()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Button copyWith(void Function(Button) updates) => super.copyWith((message) => updates(message as Button)) as Button;

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

/// *
///  Filter configuration message
class FilterOptions extends $pb.GeneratedMessage {
  factory FilterOptions({
    $core.int? fixationFilter,
    $core.int? gazeFilter,
  }) {
    final $result = create();
    if (fixationFilter != null) {
      $result.fixationFilter = fixationFilter;
    }
    if (gazeFilter != null) {
      $result.gazeFilter = gazeFilter;
    }
    return $result;
  }
  FilterOptions._() : super();
  factory FilterOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilterOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FilterOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'fixationFilter', $pb.PbFieldType.O3, protoName: 'fixationFilter')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'gazeFilter', $pb.PbFieldType.O3, protoName: 'gazeFilter')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilterOptions clone() => FilterOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilterOptions copyWith(void Function(FilterOptions) updates) => super.copyWith((message) => updates(message as FilterOptions)) as FilterOptions;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
