// This is a generated file - do not edit.
//
// Generated from Skyle.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $0;

import 'Skyle.pbenum.dart';
import 'Types.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'Skyle.pbenum.dart';

/// *
///  Message to indicate a trigger
class TriggerMessage extends $pb.GeneratedMessage {
  factory TriggerMessage({
    $core.bool? singleClick,
    $core.bool? doubleClick,
    $core.bool? holdClick,
    $core.bool? fixation,
  }) {
    final result = create();
    if (singleClick != null) result.singleClick = singleClick;
    if (doubleClick != null) result.doubleClick = doubleClick;
    if (holdClick != null) result.holdClick = holdClick;
    if (fixation != null) result.fixation = fixation;
    return result;
  }

  TriggerMessage._();

  factory TriggerMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TriggerMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TriggerMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'singleClick', protoName: 'singleClick')
    ..aOB(2, _omitFieldNames ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOB(3, _omitFieldNames ? '' : 'holdClick', protoName: 'holdClick')
    ..aOB(4, _omitFieldNames ? '' : 'fixation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TriggerMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TriggerMessage copyWith(void Function(TriggerMessage) updates) =>
      super.copyWith((message) => updates(message as TriggerMessage))
          as TriggerMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TriggerMessage create() => TriggerMessage._();
  @$core.override
  TriggerMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TriggerMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TriggerMessage>(create);
  static TriggerMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get singleClick => $_getBF(0);
  @$pb.TagNumber(1)
  set singleClick($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSingleClick() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleClick() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get doubleClick => $_getBF(1);
  @$pb.TagNumber(2)
  set doubleClick($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDoubleClick() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleClick() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get holdClick => $_getBF(2);
  @$pb.TagNumber(3)
  set holdClick($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHoldClick() => $_has(2);
  @$pb.TagNumber(3)
  void clearHoldClick() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get fixation => $_getBF(3);
  @$pb.TagNumber(4)
  set fixation($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFixation() => $_has(3);
  @$pb.TagNumber(4)
  void clearFixation() => $_clearField(4);
}

/// *
///  Message to request resets
class ResetMessage extends $pb.GeneratedMessage {
  factory ResetMessage({
    $core.bool? services,
    $core.bool? device,
    $core.bool? data,
  }) {
    final result = create();
    if (services != null) result.services = services;
    if (device != null) result.device = device;
    if (data != null) result.data = data;
    return result;
  }

  ResetMessage._();

  factory ResetMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResetMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResetMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'services')
    ..aOB(2, _omitFieldNames ? '' : 'device')
    ..aOB(3, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetMessage copyWith(void Function(ResetMessage) updates) =>
      super.copyWith((message) => updates(message as ResetMessage))
          as ResetMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetMessage create() => ResetMessage._();
  @$core.override
  ResetMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResetMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResetMessage>(create);
  static ResetMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get services => $_getBF(0);
  @$pb.TagNumber(1)
  set services($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasServices() => $_has(0);
  @$pb.TagNumber(1)
  void clearServices() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get device => $_getBF(1);
  @$pb.TagNumber(2)
  set device($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get data => $_getBF(2);
  @$pb.TagNumber(3)
  set data($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);
}

/// *
///  Message describing a user profile
class Profile extends $pb.GeneratedMessage {
  factory Profile({
    $core.int? id,
    $core.String? name,
    Profile_Skill? skill,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (skill != null) result.skill = skill;
    return result;
  }

  Profile._();

  factory Profile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Profile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Profile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aE<Profile_Skill>(3, _omitFieldNames ? '' : 'skill',
        enumValues: Profile_Skill.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile)) as Profile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  @$core.override
  Profile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  Profile_Skill get skill => $_getN(2);
  @$pb.TagNumber(3)
  set skill(Profile_Skill value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSkill() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkill() => $_clearField(3);
}

/// *
///  General status message
class StatusMessage extends $pb.GeneratedMessage {
  factory StatusMessage({
    $core.bool? success,
  }) {
    final result = create();
    if (success != null) result.success = success;
    return result;
  }

  StatusMessage._();

  factory StatusMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StatusMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusMessage copyWith(void Function(StatusMessage) updates) =>
      super.copyWith((message) => updates(message as StatusMessage))
          as StatusMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusMessage create() => StatusMessage._();
  @$core.override
  StatusMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StatusMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusMessage>(create);
  static StatusMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

enum OptionMessage_Message { empty, options, notSet }

/// *
///  Message to wrap the options message: either empty or filled with options
class OptionMessage extends $pb.GeneratedMessage {
  factory OptionMessage({
    $0.Empty? empty,
    Options? options,
  }) {
    final result = create();
    if (empty != null) result.empty = empty;
    if (options != null) result.options = options;
    return result;
  }

  OptionMessage._();

  factory OptionMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OptionMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, OptionMessage_Message>
      _OptionMessage_MessageByTag = {
    1: OptionMessage_Message.empty,
    2: OptionMessage_Message.options,
    0: OptionMessage_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OptionMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.Empty>(1, _omitFieldNames ? '' : 'empty',
        subBuilder: $0.Empty.create)
    ..aOM<Options>(2, _omitFieldNames ? '' : 'options',
        subBuilder: Options.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionMessage copyWith(void Function(OptionMessage) updates) =>
      super.copyWith((message) => updates(message as OptionMessage))
          as OptionMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionMessage create() => OptionMessage._();
  @$core.override
  OptionMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OptionMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OptionMessage>(create);
  static OptionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  OptionMessage_Message whichMessage() =>
      _OptionMessage_MessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Empty get empty => $_getN(0);
  @$pb.TagNumber(1)
  set empty($0.Empty value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEmpty() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpty() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Empty ensureEmpty() => $_ensure(0);

  @$pb.TagNumber(2)
  Options get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(Options value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => $_clearField(2);
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
    final result = create();
    if (calibControl != null) result.calibControl = calibControl;
    if (calibImprove != null) result.calibImprove = calibImprove;
    if (calibConfirm != null) result.calibConfirm = calibConfirm;
    return result;
  }

  CalibControlMessages._();

  factory CalibControlMessages.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibControlMessages.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CalibControlMessages_Message>
      _CalibControlMessages_MessageByTag = {
    1: CalibControlMessages_Message.calibControl,
    2: CalibControlMessages_Message.calibImprove,
    3: CalibControlMessages_Message.calibConfirm,
    0: CalibControlMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibControlMessages',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, _omitFieldNames ? '' : 'calibControl',
        protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibImprove>(2, _omitFieldNames ? '' : 'calibImprove',
        protoName: 'calibImprove', subBuilder: CalibImprove.create)
    ..aOM<CalibConfirm>(3, _omitFieldNames ? '' : 'calibConfirm',
        protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibControlMessages clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibControlMessages copyWith(void Function(CalibControlMessages) updates) =>
      super.copyWith((message) => updates(message as CalibControlMessages))
          as CalibControlMessages;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibControlMessages create() => CalibControlMessages._();
  @$core.override
  CalibControlMessages createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibControlMessages getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibControlMessages>(create);
  static CalibControlMessages? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  CalibControlMessages_Message whichMessage() =>
      _CalibControlMessages_MessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalibControl get calibControl => $_getN(0);
  @$pb.TagNumber(1)
  set calibControl(CalibControl value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCalibControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibControl() => $_clearField(1);
  @$pb.TagNumber(1)
  CalibControl ensureCalibControl() => $_ensure(0);

  @$pb.TagNumber(2)
  CalibImprove get calibImprove => $_getN(1);
  @$pb.TagNumber(2)
  set calibImprove(CalibImprove value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCalibImprove() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalibImprove() => $_clearField(2);
  @$pb.TagNumber(2)
  CalibImprove ensureCalibImprove() => $_ensure(1);

  @$pb.TagNumber(3)
  CalibConfirm get calibConfirm => $_getN(2);
  @$pb.TagNumber(3)
  set calibConfirm(CalibConfirm value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCalibConfirm() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalibConfirm() => $_clearField(3);
  @$pb.TagNumber(3)
  CalibConfirm ensureCalibConfirm() => $_ensure(2);
}

enum CalibCursorMessages_Message { empty, calibConfirm, notSet }

/// *
///  Message wrapping possible cursor calibration messages for a client
class CalibCursorMessages extends $pb.GeneratedMessage {
  factory CalibCursorMessages({
    $0.Empty? empty,
    CalibConfirm? calibConfirm,
  }) {
    final result = create();
    if (empty != null) result.empty = empty;
    if (calibConfirm != null) result.calibConfirm = calibConfirm;
    return result;
  }

  CalibCursorMessages._();

  factory CalibCursorMessages.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibCursorMessages.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CalibCursorMessages_Message>
      _CalibCursorMessages_MessageByTag = {
    1: CalibCursorMessages_Message.empty,
    3: CalibCursorMessages_Message.calibConfirm,
    0: CalibCursorMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibCursorMessages',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<$0.Empty>(1, _omitFieldNames ? '' : 'empty',
        subBuilder: $0.Empty.create)
    ..aOM<CalibConfirm>(3, _omitFieldNames ? '' : 'calibConfirm',
        protoName: 'calibConfirm', subBuilder: CalibConfirm.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibCursorMessages clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibCursorMessages copyWith(void Function(CalibCursorMessages) updates) =>
      super.copyWith((message) => updates(message as CalibCursorMessages))
          as CalibCursorMessages;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibCursorMessages create() => CalibCursorMessages._();
  @$core.override
  CalibCursorMessages createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibCursorMessages getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibCursorMessages>(create);
  static CalibCursorMessages? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(3)
  CalibCursorMessages_Message whichMessage() =>
      _CalibCursorMessages_MessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Empty get empty => $_getN(0);
  @$pb.TagNumber(1)
  set empty($0.Empty value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEmpty() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpty() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Empty ensureEmpty() => $_ensure(0);

  @$pb.TagNumber(3)
  CalibConfirm get calibConfirm => $_getN(1);
  @$pb.TagNumber(3)
  set calibConfirm(CalibConfirm value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCalibConfirm() => $_has(1);
  @$pb.TagNumber(3)
  void clearCalibConfirm() => $_clearField(3);
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
    final result = create();
    if (calibrate != null) result.calibrate = calibrate;
    if (numberOfPoints != null) result.numberOfPoints = numberOfPoints;
    if (abort != null) result.abort = abort;
    if (stopHID != null) result.stopHID = stopHID;
    if (res != null) result.res = res;
    if (stepByStep != null) result.stepByStep = stepByStep;
    if (calibrationPoints != null)
      result.calibrationPoints.addAll(calibrationPoints);
    return result;
  }

  CalibControl._();

  factory CalibControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'calibrate')
    ..aI(2, _omitFieldNames ? '' : 'numberOfPoints',
        protoName: 'numberOfPoints')
    ..aOB(3, _omitFieldNames ? '' : 'abort')
    ..aOB(4, _omitFieldNames ? '' : 'stopHID', protoName: 'stopHID')
    ..aOM<ScreenResolution>(5, _omitFieldNames ? '' : 'res',
        subBuilder: ScreenResolution.create)
    ..aOB(6, _omitFieldNames ? '' : 'stepByStep', protoName: 'stepByStep')
    ..p<$core.int>(
        7, _omitFieldNames ? '' : 'calibrationPoints', $pb.PbFieldType.K3,
        protoName: 'calibrationPoints')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibControl copyWith(void Function(CalibControl) updates) =>
      super.copyWith((message) => updates(message as CalibControl))
          as CalibControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibControl create() => CalibControl._();
  @$core.override
  CalibControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibControl>(create);
  static CalibControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get calibrate => $_getBF(0);
  @$pb.TagNumber(1)
  set calibrate($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCalibrate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibrate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get numberOfPoints => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberOfPoints($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumberOfPoints() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfPoints() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get abort => $_getBF(2);
  @$pb.TagNumber(3)
  set abort($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAbort() => $_has(2);
  @$pb.TagNumber(3)
  void clearAbort() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get stopHID => $_getBF(3);
  @$pb.TagNumber(4)
  set stopHID($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStopHID() => $_has(3);
  @$pb.TagNumber(4)
  void clearStopHID() => $_clearField(4);

  @$pb.TagNumber(5)
  ScreenResolution get res => $_getN(4);
  @$pb.TagNumber(5)
  set res(ScreenResolution value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRes() => $_has(4);
  @$pb.TagNumber(5)
  void clearRes() => $_clearField(5);
  @$pb.TagNumber(5)
  ScreenResolution ensureRes() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get stepByStep => $_getBF(5);
  @$pb.TagNumber(6)
  set stepByStep($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStepByStep() => $_has(5);
  @$pb.TagNumber(6)
  void clearStepByStep() => $_clearField(6);

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
  $pb.PbList<$core.int> get calibrationPoints => $_getList(6);
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
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (widthInMM != null) result.widthInMM = widthInMM;
    if (heightInMM != null) result.heightInMM = heightInMM;
    return result;
  }

  ScreenResolution._();

  factory ScreenResolution.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScreenResolution.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScreenResolution',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aI(5, _omitFieldNames ? '' : 'width')
    ..aI(6, _omitFieldNames ? '' : 'height')
    ..aI(7, _omitFieldNames ? '' : 'widthInMM', protoName: 'widthInMM')
    ..aI(8, _omitFieldNames ? '' : 'heightInMM', protoName: 'heightInMM')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScreenResolution clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScreenResolution copyWith(void Function(ScreenResolution) updates) =>
      super.copyWith((message) => updates(message as ScreenResolution))
          as ScreenResolution;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScreenResolution create() => ScreenResolution._();
  @$core.override
  ScreenResolution createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScreenResolution getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScreenResolution>(create);
  static ScreenResolution? _defaultInstance;

  @$pb.TagNumber(5)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(5)
  set width($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(5)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(5)
  void clearWidth() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(6)
  set height($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(6)
  void clearHeight() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get widthInMM => $_getIZ(2);
  @$pb.TagNumber(7)
  set widthInMM($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(7)
  $core.bool hasWidthInMM() => $_has(2);
  @$pb.TagNumber(7)
  void clearWidthInMM() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get heightInMM => $_getIZ(3);
  @$pb.TagNumber(8)
  set heightInMM($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(8)
  $core.bool hasHeightInMM() => $_has(3);
  @$pb.TagNumber(8)
  void clearHeightInMM() => $_clearField(8);
}

/// *
///  Message to improve a calibration
class CalibImprove extends $pb.GeneratedMessage {
  factory CalibImprove({
    $core.int? rating,
    $core.bool? stopHID,
  }) {
    final result = create();
    if (rating != null) result.rating = rating;
    if (stopHID != null) result.stopHID = stopHID;
    return result;
  }

  CalibImprove._();

  factory CalibImprove.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibImprove.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibImprove',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'rating')
    ..aOB(2, _omitFieldNames ? '' : 'stopHID', protoName: 'stopHID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibImprove clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibImprove copyWith(void Function(CalibImprove) updates) =>
      super.copyWith((message) => updates(message as CalibImprove))
          as CalibImprove;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibImprove create() => CalibImprove._();
  @$core.override
  CalibImprove createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibImprove getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibImprove>(create);
  static CalibImprove? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rating => $_getIZ(0);
  @$pb.TagNumber(1)
  set rating($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get stopHID => $_getBF(1);
  @$pb.TagNumber(2)
  set stopHID($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStopHID() => $_has(1);
  @$pb.TagNumber(2)
  void clearStopHID() => $_clearField(2);
}

/// *
///  Message to confirm a calibration point
class CalibConfirm extends $pb.GeneratedMessage {
  factory CalibConfirm({
    $core.bool? confirmed,
  }) {
    final result = create();
    if (confirmed != null) result.confirmed = confirmed;
    return result;
  }

  CalibConfirm._();

  factory CalibConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'confirmed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibConfirm copyWith(void Function(CalibConfirm) updates) =>
      super.copyWith((message) => updates(message as CalibConfirm))
          as CalibConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibConfirm create() => CalibConfirm._();
  @$core.override
  CalibConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibConfirm>(create);
  static CalibConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get confirmed => $_getBF(0);
  @$pb.TagNumber(1)
  set confirmed($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConfirmed() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmed() => $_clearField(1);
}

enum CalibMessages_Message { calibControl, calibPoint, calibQuality, notSet }

/// *
///  Message wrapping calibration host messages
class CalibMessages extends $pb.GeneratedMessage {
  factory CalibMessages({
    CalibControl? calibControl,
    CalibPoint? calibPoint,
    CalibQuality? calibQuality,
  }) {
    final result = create();
    if (calibControl != null) result.calibControl = calibControl;
    if (calibPoint != null) result.calibPoint = calibPoint;
    if (calibQuality != null) result.calibQuality = calibQuality;
    return result;
  }

  CalibMessages._();

  factory CalibMessages.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibMessages.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CalibMessages_Message>
      _CalibMessages_MessageByTag = {
    1: CalibMessages_Message.calibControl,
    2: CalibMessages_Message.calibPoint,
    3: CalibMessages_Message.calibQuality,
    0: CalibMessages_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibMessages',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalibControl>(1, _omitFieldNames ? '' : 'calibControl',
        protoName: 'calibControl', subBuilder: CalibControl.create)
    ..aOM<CalibPoint>(2, _omitFieldNames ? '' : 'calibPoint',
        protoName: 'calibPoint', subBuilder: CalibPoint.create)
    ..aOM<CalibQuality>(3, _omitFieldNames ? '' : 'calibQuality',
        protoName: 'calibQuality', subBuilder: CalibQuality.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibMessages clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibMessages copyWith(void Function(CalibMessages) updates) =>
      super.copyWith((message) => updates(message as CalibMessages))
          as CalibMessages;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibMessages create() => CalibMessages._();
  @$core.override
  CalibMessages createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibMessages getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibMessages>(create);
  static CalibMessages? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  CalibMessages_Message whichMessage() =>
      _CalibMessages_MessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalibControl get calibControl => $_getN(0);
  @$pb.TagNumber(1)
  set calibControl(CalibControl value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCalibControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalibControl() => $_clearField(1);
  @$pb.TagNumber(1)
  CalibControl ensureCalibControl() => $_ensure(0);

  @$pb.TagNumber(2)
  CalibPoint get calibPoint => $_getN(1);
  @$pb.TagNumber(2)
  set calibPoint(CalibPoint value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCalibPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalibPoint() => $_clearField(2);
  @$pb.TagNumber(2)
  CalibPoint ensureCalibPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  CalibQuality get calibQuality => $_getN(2);
  @$pb.TagNumber(3)
  set calibQuality(CalibQuality value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCalibQuality() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalibQuality() => $_clearField(3);
  @$pb.TagNumber(3)
  CalibQuality ensureCalibQuality() => $_ensure(2);
}

/// *
///  Message for binocular gaze points
class BinocularGaze extends $pb.GeneratedMessage {
  factory BinocularGaze({
    $1.Point? leftGaze,
    $1.Point? rightGaze,
  }) {
    final result = create();
    if (leftGaze != null) result.leftGaze = leftGaze;
    if (rightGaze != null) result.rightGaze = rightGaze;
    return result;
  }

  BinocularGaze._();

  factory BinocularGaze.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BinocularGaze.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BinocularGaze',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOM<$1.Point>(1, _omitFieldNames ? '' : 'leftGaze',
        protoName: 'leftGaze', subBuilder: $1.Point.create)
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'rightGaze',
        protoName: 'rightGaze', subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BinocularGaze clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BinocularGaze copyWith(void Function(BinocularGaze) updates) =>
      super.copyWith((message) => updates(message as BinocularGaze))
          as BinocularGaze;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BinocularGaze create() => BinocularGaze._();
  @$core.override
  BinocularGaze createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BinocularGaze getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BinocularGaze>(create);
  static BinocularGaze? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Point get leftGaze => $_getN(0);
  @$pb.TagNumber(1)
  set leftGaze($1.Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLeftGaze() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftGaze() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Point ensureLeftGaze() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Point get rightGaze => $_getN(1);
  @$pb.TagNumber(2)
  set rightGaze($1.Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRightGaze() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightGaze() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Point ensureRightGaze() => $_ensure(1);
}

/// *
///  Message describing a calibration point
class CalibPoint extends $pb.GeneratedMessage {
  factory CalibPoint({
    $core.int? count,
    $1.Point? currentPoint,
  }) {
    final result = create();
    if (count != null) result.count = count;
    if (currentPoint != null) result.currentPoint = currentPoint;
    return result;
  }

  CalibPoint._();

  factory CalibPoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibPoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibPoint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'count')
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'currentPoint',
        protoName: 'currentPoint', subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibPoint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibPoint copyWith(void Function(CalibPoint) updates) =>
      super.copyWith((message) => updates(message as CalibPoint)) as CalibPoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibPoint create() => CalibPoint._();
  @$core.override
  CalibPoint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibPoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibPoint>(create);
  static CalibPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Point get currentPoint => $_getN(1);
  @$pb.TagNumber(2)
  set currentPoint($1.Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPoint() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Point ensureCurrentPoint() => $_ensure(1);
}

/// *
///  Message describing the quality of a calibration
class CalibQuality extends $pb.GeneratedMessage {
  factory CalibQuality({
    $core.double? quality,
    $core.Iterable<$core.double>? qualities,
  }) {
    final result = create();
    if (quality != null) result.quality = quality;
    if (qualities != null) result.qualities.addAll(qualities);
    return result;
  }

  CalibQuality._();

  factory CalibQuality.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalibQuality.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalibQuality',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'quality')
    ..p<$core.double>(2, _omitFieldNames ? '' : 'qualities', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibQuality clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalibQuality copyWith(void Function(CalibQuality) updates) =>
      super.copyWith((message) => updates(message as CalibQuality))
          as CalibQuality;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalibQuality create() => CalibQuality._();
  @$core.override
  CalibQuality createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalibQuality getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalibQuality>(create);
  static CalibQuality? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get quality => $_getN(0);
  @$pb.TagNumber(1)
  set quality($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuality() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuality() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get qualities => $_getList(1);
}

/// *
///  Message with eye positions and quality indicators
class PositioningMessage extends $pb.GeneratedMessage {
  factory PositioningMessage({
    $1.Point? leftEye,
    $1.Point? rightEye,
    $core.int? distanceQuality,
    $core.int? positioningQuality,
    $core.int? horizontalQuality,
    $core.int? verticalQuality,
    $1.Face? face,
  }) {
    final result = create();
    if (leftEye != null) result.leftEye = leftEye;
    if (rightEye != null) result.rightEye = rightEye;
    if (distanceQuality != null) result.distanceQuality = distanceQuality;
    if (positioningQuality != null)
      result.positioningQuality = positioningQuality;
    if (horizontalQuality != null) result.horizontalQuality = horizontalQuality;
    if (verticalQuality != null) result.verticalQuality = verticalQuality;
    if (face != null) result.face = face;
    return result;
  }

  PositioningMessage._();

  factory PositioningMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PositioningMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PositioningMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOM<$1.Point>(1, _omitFieldNames ? '' : 'leftEye',
        protoName: 'leftEye', subBuilder: $1.Point.create)
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'rightEye',
        protoName: 'rightEye', subBuilder: $1.Point.create)
    ..aI(3, _omitFieldNames ? '' : 'distanceQuality',
        protoName: 'distanceQuality')
    ..aI(4, _omitFieldNames ? '' : 'positioningQuality',
        protoName: 'positioningQuality')
    ..aI(5, _omitFieldNames ? '' : 'horizontalQuality',
        protoName: 'horizontalQuality')
    ..aI(6, _omitFieldNames ? '' : 'verticalQuality',
        protoName: 'verticalQuality')
    ..aOM<$1.Face>(7, _omitFieldNames ? '' : 'face', subBuilder: $1.Face.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositioningMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositioningMessage copyWith(void Function(PositioningMessage) updates) =>
      super.copyWith((message) => updates(message as PositioningMessage))
          as PositioningMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositioningMessage create() => PositioningMessage._();
  @$core.override
  PositioningMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PositioningMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PositioningMessage>(create);
  static PositioningMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Point get leftEye => $_getN(0);
  @$pb.TagNumber(1)
  set leftEye($1.Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLeftEye() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftEye() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Point ensureLeftEye() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Point get rightEye => $_getN(1);
  @$pb.TagNumber(2)
  set rightEye($1.Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRightEye() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightEye() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Point ensureRightEye() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get distanceQuality => $_getIZ(2);
  @$pb.TagNumber(3)
  set distanceQuality($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDistanceQuality() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistanceQuality() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get positioningQuality => $_getIZ(3);
  @$pb.TagNumber(4)
  set positioningQuality($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPositioningQuality() => $_has(3);
  @$pb.TagNumber(4)
  void clearPositioningQuality() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get horizontalQuality => $_getIZ(4);
  @$pb.TagNumber(5)
  set horizontalQuality($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHorizontalQuality() => $_has(4);
  @$pb.TagNumber(5)
  void clearHorizontalQuality() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get verticalQuality => $_getIZ(5);
  @$pb.TagNumber(6)
  set verticalQuality($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVerticalQuality() => $_has(5);
  @$pb.TagNumber(6)
  void clearVerticalQuality() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Face get face => $_getN(6);
  @$pb.TagNumber(7)
  set face($1.Face value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFace() => $_has(6);
  @$pb.TagNumber(7)
  void clearFace() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Face ensureFace() => $_ensure(6);
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
    final result = create();
    if (enableVideoStream != null) result.enableVideoStream = enableVideoStream;
    if (enableAutoPause != null) result.enableAutoPause = enableAutoPause;
    if (enablePause != null) result.enablePause = enablePause;
    if (enablePositioningStream != null)
      result.enablePositioningStream = enablePositioningStream;
    if (enableAutoStandby != null) result.enableAutoStandby = enableAutoStandby;
    if (disableMouse != null) result.disableMouse = disableMouse;
    if (filter != null) result.filter = filter;
    if (iPadOptions != null) result.iPadOptions = iPadOptions;
    if (res != null) result.res = res;
    if (hp != null) result.hp = hp;
    if (eyeUsage != null) result.eyeUsage = eyeUsage;
    if (enableTrackingDetails != null)
      result.enableTrackingDetails = enableTrackingDetails;
    return result;
  }

  Options._();

  factory Options.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Options.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Options',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableVideoStream',
        protoName: 'enableVideoStream')
    ..aOB(2, _omitFieldNames ? '' : 'enableAutoPause',
        protoName: 'enableAutoPause')
    ..aOB(3, _omitFieldNames ? '' : 'enablePause', protoName: 'enablePause')
    ..aOB(4, _omitFieldNames ? '' : 'enablePositioningStream',
        protoName: 'enablePositioningStream')
    ..aOB(5, _omitFieldNames ? '' : 'enableAutoStandby',
        protoName: 'enableAutoStandby')
    ..aOB(6, _omitFieldNames ? '' : 'disableMouse', protoName: 'disableMouse')
    ..aOM<FilterOptions>(7, _omitFieldNames ? '' : 'filter',
        subBuilder: FilterOptions.create)
    ..aOM<IPadOptions>(8, _omitFieldNames ? '' : 'iPadOptions',
        protoName: 'iPadOptions', subBuilder: IPadOptions.create)
    ..aOM<ScreenResolution>(9, _omitFieldNames ? '' : 'res',
        subBuilder: ScreenResolution.create)
    ..aOB(10, _omitFieldNames ? '' : 'hp')
    ..aE<Options_eyeUse>(11, _omitFieldNames ? '' : 'eyeUsage',
        protoName: 'eyeUsage', enumValues: Options_eyeUse.values)
    ..aOB(12, _omitFieldNames ? '' : 'enableTrackingDetails',
        protoName: 'enableTrackingDetails')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Options clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Options copyWith(void Function(Options) updates) =>
      super.copyWith((message) => updates(message as Options)) as Options;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Options create() => Options._();
  @$core.override
  Options createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Options getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Options>(create);
  static Options? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enableVideoStream => $_getBF(0);
  @$pb.TagNumber(1)
  set enableVideoStream($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnableVideoStream() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableVideoStream() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enableAutoPause => $_getBF(1);
  @$pb.TagNumber(2)
  set enableAutoPause($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnableAutoPause() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnableAutoPause() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enablePause => $_getBF(2);
  @$pb.TagNumber(3)
  set enablePause($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnablePause() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnablePause() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enablePositioningStream => $_getBF(3);
  @$pb.TagNumber(4)
  set enablePositioningStream($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnablePositioningStream() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnablePositioningStream() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enableAutoStandby => $_getBF(4);
  @$pb.TagNumber(5)
  set enableAutoStandby($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEnableAutoStandby() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnableAutoStandby() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get disableMouse => $_getBF(5);
  @$pb.TagNumber(6)
  set disableMouse($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDisableMouse() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisableMouse() => $_clearField(6);

  @$pb.TagNumber(7)
  FilterOptions get filter => $_getN(6);
  @$pb.TagNumber(7)
  set filter(FilterOptions value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFilter() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilter() => $_clearField(7);
  @$pb.TagNumber(7)
  FilterOptions ensureFilter() => $_ensure(6);

  @$pb.TagNumber(8)
  IPadOptions get iPadOptions => $_getN(7);
  @$pb.TagNumber(8)
  set iPadOptions(IPadOptions value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasIPadOptions() => $_has(7);
  @$pb.TagNumber(8)
  void clearIPadOptions() => $_clearField(8);
  @$pb.TagNumber(8)
  IPadOptions ensureIPadOptions() => $_ensure(7);

  @$pb.TagNumber(9)
  ScreenResolution get res => $_getN(8);
  @$pb.TagNumber(9)
  set res(ScreenResolution value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasRes() => $_has(8);
  @$pb.TagNumber(9)
  void clearRes() => $_clearField(9);
  @$pb.TagNumber(9)
  ScreenResolution ensureRes() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.bool get hp => $_getBF(9);
  @$pb.TagNumber(10)
  set hp($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHp() => $_has(9);
  @$pb.TagNumber(10)
  void clearHp() => $_clearField(10);

  @$pb.TagNumber(11)
  Options_eyeUse get eyeUsage => $_getN(10);
  @$pb.TagNumber(11)
  set eyeUsage(Options_eyeUse value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasEyeUsage() => $_has(10);
  @$pb.TagNumber(11)
  void clearEyeUsage() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get enableTrackingDetails => $_getBF(11);
  @$pb.TagNumber(12)
  set enableTrackingDetails($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasEnableTrackingDetails() => $_has(11);
  @$pb.TagNumber(12)
  void clearEnableTrackingDetails() => $_clearField(12);
}

enum IPadOptions_OptionalModel { model, notSet }

/// *
///  iPad Option message for configuration
class IPadOptions extends $pb.GeneratedMessage {
  factory IPadOptions({
    $core.bool? isOldiOS,
    $core.bool? isNotZoomed,
    IPadOptions_iPadModel? model,
  }) {
    final result = create();
    if (isOldiOS != null) result.isOldiOS = isOldiOS;
    if (isNotZoomed != null) result.isNotZoomed = isNotZoomed;
    if (model != null) result.model = model;
    return result;
  }

  IPadOptions._();

  factory IPadOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IPadOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, IPadOptions_OptionalModel>
      _IPadOptions_OptionalModelByTag = {
    3: IPadOptions_OptionalModel.model,
    0: IPadOptions_OptionalModel.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IPadOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..oo(0, [3])
    ..aOB(1, _omitFieldNames ? '' : 'isOldiOS', protoName: 'isOldiOS')
    ..aOB(2, _omitFieldNames ? '' : 'isNotZoomed', protoName: 'isNotZoomed')
    ..aE<IPadOptions_iPadModel>(3, _omitFieldNames ? '' : 'model',
        enumValues: IPadOptions_iPadModel.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IPadOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IPadOptions copyWith(void Function(IPadOptions) updates) =>
      super.copyWith((message) => updates(message as IPadOptions))
          as IPadOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPadOptions create() => IPadOptions._();
  @$core.override
  IPadOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IPadOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IPadOptions>(create);
  static IPadOptions? _defaultInstance;

  @$pb.TagNumber(3)
  IPadOptions_OptionalModel whichOptionalModel() =>
      _IPadOptions_OptionalModelByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  void clearOptionalModel() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get isOldiOS => $_getBF(0);
  @$pb.TagNumber(1)
  set isOldiOS($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOldiOS() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOldiOS() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isNotZoomed => $_getBF(1);
  @$pb.TagNumber(2)
  set isNotZoomed($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsNotZoomed() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNotZoomed() => $_clearField(2);

  @$pb.TagNumber(3)
  IPadOptions_iPadModel get model => $_getN(2);
  @$pb.TagNumber(3)
  set model(IPadOptions_iPadModel value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearModel() => $_clearField(3);
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
    final result = create();
    if (firmware != null) result.firmware = firmware;
    if (eyetracker != null) result.eyetracker = eyetracker;
    if (calib != null) result.calib = calib;
    if (base != null) result.base = base;
    if (serial != null) result.serial = serial;
    if (skyleType != null) result.skyleType = skyleType;
    if (isDemo != null) result.isDemo = isDemo;
    return result;
  }

  DeviceVersions._();

  factory DeviceVersions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceVersions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceVersions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firmware')
    ..aOS(2, _omitFieldNames ? '' : 'eyetracker')
    ..aOS(3, _omitFieldNames ? '' : 'calib')
    ..aOS(4, _omitFieldNames ? '' : 'base')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'serial', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(6, _omitFieldNames ? '' : 'skyleType', protoName: 'skyleType')
    ..aOB(7, _omitFieldNames ? '' : 'isDemo', protoName: 'isDemo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceVersions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceVersions copyWith(void Function(DeviceVersions) updates) =>
      super.copyWith((message) => updates(message as DeviceVersions))
          as DeviceVersions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceVersions create() => DeviceVersions._();
  @$core.override
  DeviceVersions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceVersions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceVersions>(create);
  static DeviceVersions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firmware => $_getSZ(0);
  @$pb.TagNumber(1)
  set firmware($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFirmware() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirmware() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get eyetracker => $_getSZ(1);
  @$pb.TagNumber(2)
  set eyetracker($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEyetracker() => $_has(1);
  @$pb.TagNumber(2)
  void clearEyetracker() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get calib => $_getSZ(2);
  @$pb.TagNumber(3)
  set calib($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCalib() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalib() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get base => $_getSZ(3);
  @$pb.TagNumber(4)
  set base($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBase() => $_has(3);
  @$pb.TagNumber(4)
  void clearBase() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get serial => $_getI64(4);
  @$pb.TagNumber(5)
  set serial($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSerial() => $_has(4);
  @$pb.TagNumber(5)
  void clearSerial() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get skyleType => $_getIZ(5);
  @$pb.TagNumber(6)
  set skyleType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSkyleType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSkyleType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isDemo => $_getBF(6);
  @$pb.TagNumber(7)
  set isDemo($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsDemo() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsDemo() => $_clearField(7);
}

/// *
///  Representing the three available button actions
class ButtonActions extends $pb.GeneratedMessage {
  factory ButtonActions({
    $core.String? singleClick,
    $core.String? doubleClick,
    $core.String? holdClick,
  }) {
    final result = create();
    if (singleClick != null) result.singleClick = singleClick;
    if (doubleClick != null) result.doubleClick = doubleClick;
    if (holdClick != null) result.holdClick = holdClick;
    return result;
  }

  ButtonActions._();

  factory ButtonActions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ButtonActions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ButtonActions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'singleClick', protoName: 'singleClick')
    ..aOS(2, _omitFieldNames ? '' : 'doubleClick', protoName: 'doubleClick')
    ..aOS(3, _omitFieldNames ? '' : 'holdClick', protoName: 'holdClick')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonActions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonActions copyWith(void Function(ButtonActions) updates) =>
      super.copyWith((message) => updates(message as ButtonActions))
          as ButtonActions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ButtonActions create() => ButtonActions._();
  @$core.override
  ButtonActions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ButtonActions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ButtonActions>(create);
  static ButtonActions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get singleClick => $_getSZ(0);
  @$pb.TagNumber(1)
  set singleClick($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSingleClick() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleClick() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get doubleClick => $_getSZ(1);
  @$pb.TagNumber(2)
  set doubleClick($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDoubleClick() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleClick() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get holdClick => $_getSZ(2);
  @$pb.TagNumber(3)
  set holdClick($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHoldClick() => $_has(2);
  @$pb.TagNumber(3)
  void clearHoldClick() => $_clearField(3);
}

/// *
///  Button message
class Button extends $pb.GeneratedMessage {
  factory Button({
    $core.bool? isPresent,
    ButtonActions? buttonActions,
    $core.Iterable<$core.String>? availableActions,
  }) {
    final result = create();
    if (isPresent != null) result.isPresent = isPresent;
    if (buttonActions != null) result.buttonActions = buttonActions;
    if (availableActions != null)
      result.availableActions.addAll(availableActions);
    return result;
  }

  Button._();

  factory Button.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Button.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Button',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isPresent', protoName: 'isPresent')
    ..aOM<ButtonActions>(2, _omitFieldNames ? '' : 'buttonActions',
        protoName: 'buttonActions', subBuilder: ButtonActions.create)
    ..pPS(3, _omitFieldNames ? '' : 'availableActions',
        protoName: 'availableActions')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Button clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Button copyWith(void Function(Button) updates) =>
      super.copyWith((message) => updates(message as Button)) as Button;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Button create() => Button._();
  @$core.override
  Button createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Button getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Button>(create);
  static Button? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isPresent => $_getBF(0);
  @$pb.TagNumber(1)
  set isPresent($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsPresent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPresent() => $_clearField(1);

  @$pb.TagNumber(2)
  ButtonActions get buttonActions => $_getN(1);
  @$pb.TagNumber(2)
  set buttonActions(ButtonActions value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasButtonActions() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonActions() => $_clearField(2);
  @$pb.TagNumber(2)
  ButtonActions ensureButtonActions() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get availableActions => $_getList(2);
}

/// *
///  Filter configuration message
class FilterOptions extends $pb.GeneratedMessage {
  factory FilterOptions({
    $core.int? fixationFilter,
    $core.int? gazeFilter,
  }) {
    final result = create();
    if (fixationFilter != null) result.fixationFilter = fixationFilter;
    if (gazeFilter != null) result.gazeFilter = gazeFilter;
    return result;
  }

  FilterOptions._();

  factory FilterOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FilterOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FilterOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'fixationFilter',
        protoName: 'fixationFilter')
    ..aI(2, _omitFieldNames ? '' : 'gazeFilter', protoName: 'gazeFilter')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterOptions copyWith(void Function(FilterOptions) updates) =>
      super.copyWith((message) => updates(message as FilterOptions))
          as FilterOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterOptions create() => FilterOptions._();
  @$core.override
  FilterOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FilterOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FilterOptions>(create);
  static FilterOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fixationFilter => $_getIZ(0);
  @$pb.TagNumber(1)
  set fixationFilter($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFixationFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixationFilter() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get gazeFilter => $_getIZ(1);
  @$pb.TagNumber(2)
  set gazeFilter($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGazeFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearGazeFilter() => $_clearField(2);
}

/// *
///  Skyle service to use the eye tracker
class SkyleApi {
  final $pb.RpcClient _client;

  SkyleApi(this._client);

  $async.Future<CalibMessages> calibrate(
          $pb.ClientContext? ctx, CalibControlMessages request) =>
      _client.invoke<CalibMessages>(
          ctx, 'Skyle', 'Calibrate', request, CalibMessages());
  $async.Future<PositioningMessage> positioning(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<PositioningMessage>(
          ctx, 'Skyle', 'Positioning', request, PositioningMessage());
  $async.Future<$1.Point> gaze($pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<$1.Point>(ctx, 'Skyle', 'Gaze', request, $1.Point());
  $async.Future<TriggerMessage> trigger(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<TriggerMessage>(
          ctx, 'Skyle', 'Trigger', request, TriggerMessage());
  $async.Future<Button> getButton($pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<Button>(ctx, 'Skyle', 'GetButton', request, Button());
  $async.Future<ButtonActions> setButton(
          $pb.ClientContext? ctx, ButtonActions request) =>
      _client.invoke<ButtonActions>(
          ctx, 'Skyle', 'SetButton', request, ButtonActions());
  $async.Future<Options> configure(
          $pb.ClientContext? ctx, OptionMessage request) =>
      _client.invoke<Options>(ctx, 'Skyle', 'Configure', request, Options());
  $async.Future<Options> configureStream(
          $pb.ClientContext? ctx, OptionMessage request) =>
      _client.invoke<Options>(
          ctx, 'Skyle', 'ConfigureStream', request, Options());
  $async.Future<DeviceVersions> getVersions(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<DeviceVersions>(
          ctx, 'Skyle', 'GetVersions', request, DeviceVersions());
  $async.Future<Profile> getProfiles(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<Profile>(ctx, 'Skyle', 'GetProfiles', request, Profile());
  $async.Future<Profile> currentProfile(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<Profile>(
          ctx, 'Skyle', 'CurrentProfile', request, Profile());
  $async.Future<StatusMessage> setProfile(
          $pb.ClientContext? ctx, Profile request) =>
      _client.invoke<StatusMessage>(
          ctx, 'Skyle', 'SetProfile', request, StatusMessage());
  $async.Future<StatusMessage> deleteProfile(
          $pb.ClientContext? ctx, Profile request) =>
      _client.invoke<StatusMessage>(
          ctx, 'Skyle', 'DeleteProfile', request, StatusMessage());
  $async.Future<StatusMessage> reset(
          $pb.ClientContext? ctx, ResetMessage request) =>
      _client.invoke<StatusMessage>(
          ctx, 'Skyle', 'Reset', request, StatusMessage());
  $async.Future<$1.Point> cursorCalibration(
          $pb.ClientContext? ctx, CalibCursorMessages request) =>
      _client.invoke<$1.Point>(
          ctx, 'Skyle', 'CursorCalibration', request, $1.Point());
  $async.Future<$1.Mat> rawImages($pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<$1.Mat>(ctx, 'Skyle', 'RawImages', request, $1.Mat());
  $async.Future<BinocularGaze> rawBinocularGaze(
          $pb.ClientContext? ctx, $0.Empty request) =>
      _client.invoke<BinocularGaze>(
          ctx, 'Skyle', 'RawBinocularGaze', request, BinocularGaze());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
