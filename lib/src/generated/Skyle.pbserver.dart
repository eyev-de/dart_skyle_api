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

import 'package:protobuf/protobuf.dart' as $pb;

import 'Skyle.pb.dart' as $2;
import 'Skyle.pbjson.dart';
import 'Types.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $0;

export 'Skyle.pb.dart';

abstract class SkyleServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CalibMessages> calibrate($pb.ServerContext ctx, $2.CalibControlMessages request);
  $async.Future<$2.PositioningMessage> positioning($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$1.Point> gaze($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.TriggerMessage> trigger($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.Button> getButton($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.ButtonActions> setButton($pb.ServerContext ctx, $2.ButtonActions request);
  $async.Future<$2.Options> configure($pb.ServerContext ctx, $2.OptionMessage request);
  $async.Future<$2.Options> configureStream($pb.ServerContext ctx, $2.OptionMessage request);
  $async.Future<$2.DeviceVersions> getVersions($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.Profile> getProfiles($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.Profile> currentProfile($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.StatusMessage> setProfile($pb.ServerContext ctx, $2.Profile request);
  $async.Future<$2.StatusMessage> deleteProfile($pb.ServerContext ctx, $2.Profile request);
  $async.Future<$2.StatusMessage> reset($pb.ServerContext ctx, $2.ResetMessage request);
  $async.Future<$1.Point> cursorCalibration($pb.ServerContext ctx, $2.CalibCursorMessages request);
  $async.Future<$1.Mat> rawImages($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.BinocularGaze> rawBinocularGaze($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Calibrate':
        return $2.CalibControlMessages();
      case 'Positioning':
        return $0.Empty();
      case 'Gaze':
        return $0.Empty();
      case 'Trigger':
        return $0.Empty();
      case 'GetButton':
        return $0.Empty();
      case 'SetButton':
        return $2.ButtonActions();
      case 'Configure':
        return $2.OptionMessage();
      case 'ConfigureStream':
        return $2.OptionMessage();
      case 'GetVersions':
        return $0.Empty();
      case 'GetProfiles':
        return $0.Empty();
      case 'CurrentProfile':
        return $0.Empty();
      case 'SetProfile':
        return $2.Profile();
      case 'DeleteProfile':
        return $2.Profile();
      case 'Reset':
        return $2.ResetMessage();
      case 'CursorCalibration':
        return $2.CalibCursorMessages();
      case 'RawImages':
        return $0.Empty();
      case 'RawBinocularGaze':
        return $0.Empty();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Calibrate':
        return calibrate(ctx, request as $2.CalibControlMessages);
      case 'Positioning':
        return positioning(ctx, request as $0.Empty);
      case 'Gaze':
        return gaze(ctx, request as $0.Empty);
      case 'Trigger':
        return trigger(ctx, request as $0.Empty);
      case 'GetButton':
        return getButton(ctx, request as $0.Empty);
      case 'SetButton':
        return setButton(ctx, request as $2.ButtonActions);
      case 'Configure':
        return configure(ctx, request as $2.OptionMessage);
      case 'ConfigureStream':
        return configureStream(ctx, request as $2.OptionMessage);
      case 'GetVersions':
        return getVersions(ctx, request as $0.Empty);
      case 'GetProfiles':
        return getProfiles(ctx, request as $0.Empty);
      case 'CurrentProfile':
        return currentProfile(ctx, request as $0.Empty);
      case 'SetProfile':
        return setProfile(ctx, request as $2.Profile);
      case 'DeleteProfile':
        return deleteProfile(ctx, request as $2.Profile);
      case 'Reset':
        return reset(ctx, request as $2.ResetMessage);
      case 'CursorCalibration':
        return cursorCalibration(ctx, request as $2.CalibCursorMessages);
      case 'RawImages':
        return rawImages(ctx, request as $0.Empty);
      case 'RawBinocularGaze':
        return rawBinocularGaze(ctx, request as $0.Empty);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SkyleServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => SkyleServiceBase$messageJson;
}
