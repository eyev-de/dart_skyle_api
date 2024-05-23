//
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Skyle.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;

export 'Skyle.pb.dart';

@$pb.GrpcServiceName('Skyle.Skyle')
class SkyleClient extends $grpc.Client {
  static final _$calibrate = $grpc.ClientMethod<$0.CalibControlMessages, $0.CalibMessages>(
      '/Skyle.Skyle/Calibrate',
      ($0.CalibControlMessages value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalibMessages.fromBuffer(value));
  static final _$positioning = $grpc.ClientMethod<$1.Empty, $0.PositioningMessage>(
      '/Skyle.Skyle/Positioning',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PositioningMessage.fromBuffer(value));
  static final _$gaze = $grpc.ClientMethod<$1.Empty, $0.Point>(
      '/Skyle.Skyle/Gaze',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Point.fromBuffer(value));
  static final _$trigger = $grpc.ClientMethod<$1.Empty, $0.TriggerMessage>(
      '/Skyle.Skyle/Trigger',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TriggerMessage.fromBuffer(value));
  static final _$getButton = $grpc.ClientMethod<$1.Empty, $0.Button>(
      '/Skyle.Skyle/GetButton',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Button.fromBuffer(value));
  static final _$setButton = $grpc.ClientMethod<$0.ButtonActions, $0.ButtonActions>(
      '/Skyle.Skyle/SetButton',
      ($0.ButtonActions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ButtonActions.fromBuffer(value));
  static final _$configure = $grpc.ClientMethod<$0.OptionMessage, $0.Options>(
      '/Skyle.Skyle/Configure',
      ($0.OptionMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Options.fromBuffer(value));
  static final _$getVersions = $grpc.ClientMethod<$1.Empty, $0.DeviceVersions>(
      '/Skyle.Skyle/GetVersions',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeviceVersions.fromBuffer(value));
  static final _$getProfiles = $grpc.ClientMethod<$1.Empty, $0.Profile>(
      '/Skyle.Skyle/GetProfiles',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Profile.fromBuffer(value));
  static final _$currentProfile = $grpc.ClientMethod<$1.Empty, $0.Profile>(
      '/Skyle.Skyle/CurrentProfile',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Profile.fromBuffer(value));
  static final _$setProfile = $grpc.ClientMethod<$0.Profile, $0.StatusMessage>(
      '/Skyle.Skyle/SetProfile',
      ($0.Profile value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusMessage.fromBuffer(value));
  static final _$deleteProfile = $grpc.ClientMethod<$0.Profile, $0.StatusMessage>(
      '/Skyle.Skyle/DeleteProfile',
      ($0.Profile value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusMessage.fromBuffer(value));
  static final _$reset = $grpc.ClientMethod<$0.ResetMessage, $0.StatusMessage>(
      '/Skyle.Skyle/Reset',
      ($0.ResetMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusMessage.fromBuffer(value));
  static final _$cursorCalibration = $grpc.ClientMethod<$0.CalibCursorMessages, $0.Point>(
      '/Skyle.Skyle/CursorCalibration',
      ($0.CalibCursorMessages value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Point.fromBuffer(value));
  static final _$rawImages = $grpc.ClientMethod<$1.Empty, $0.RawImage>(
      '/Skyle.Skyle/RawImages',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RawImage.fromBuffer(value));
  static final _$rawBinocularGaze = $grpc.ClientMethod<$1.Empty, $0.BinocularGaze>(
      '/Skyle.Skyle/RawBinocularGaze',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BinocularGaze.fromBuffer(value));

  SkyleClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.CalibMessages> calibrate($async.Stream<$0.CalibControlMessages> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$calibrate, request, options: options);
  }

  $grpc.ResponseStream<$0.PositioningMessage> positioning($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$positioning, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Point> gaze($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$gaze, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.TriggerMessage> trigger($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$trigger, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Button> getButton($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getButton, request, options: options);
  }

  $grpc.ResponseFuture<$0.ButtonActions> setButton($0.ButtonActions request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setButton, request, options: options);
  }

  $grpc.ResponseFuture<$0.Options> configure($0.OptionMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$configure, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeviceVersions> getVersions($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVersions, request, options: options);
  }

  $grpc.ResponseStream<$0.Profile> getProfiles($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getProfiles, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Profile> currentProfile($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusMessage> setProfile($0.Profile request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusMessage> deleteProfile($0.Profile request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusMessage> reset($0.ResetMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reset, request, options: options);
  }

  $grpc.ResponseStream<$0.Point> cursorCalibration($async.Stream<$0.CalibCursorMessages> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$cursorCalibration, request, options: options);
  }

  $grpc.ResponseStream<$0.RawImage> rawImages($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$rawImages, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.BinocularGaze> rawBinocularGaze($1.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$rawBinocularGaze, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('Skyle.Skyle')
abstract class SkyleServiceBase extends $grpc.Service {
  $core.String get $name => 'Skyle.Skyle';

  SkyleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CalibControlMessages, $0.CalibMessages>(
        'Calibrate',
        calibrate,
        true,
        true,
        ($core.List<$core.int> value) => $0.CalibControlMessages.fromBuffer(value),
        ($0.CalibMessages value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.PositioningMessage>(
        'Positioning',
        positioning_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.PositioningMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Point>(
        'Gaze',
        gaze_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Point value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.TriggerMessage>(
        'Trigger',
        trigger_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.TriggerMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Button>(
        'GetButton',
        getButton_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Button value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ButtonActions, $0.ButtonActions>(
        'SetButton',
        setButton_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ButtonActions.fromBuffer(value),
        ($0.ButtonActions value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OptionMessage, $0.Options>(
        'Configure',
        configure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OptionMessage.fromBuffer(value),
        ($0.Options value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.DeviceVersions>(
        'GetVersions',
        getVersions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.DeviceVersions value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Profile>(
        'GetProfiles',
        getProfiles_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Profile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Profile>(
        'CurrentProfile',
        currentProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Profile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Profile, $0.StatusMessage>(
        'SetProfile',
        setProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Profile.fromBuffer(value),
        ($0.StatusMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Profile, $0.StatusMessage>(
        'DeleteProfile',
        deleteProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Profile.fromBuffer(value),
        ($0.StatusMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetMessage, $0.StatusMessage>(
        'Reset',
        reset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResetMessage.fromBuffer(value),
        ($0.StatusMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CalibCursorMessages, $0.Point>(
        'CursorCalibration',
        cursorCalibration,
        true,
        true,
        ($core.List<$core.int> value) => $0.CalibCursorMessages.fromBuffer(value),
        ($0.Point value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.RawImage>(
        'RawImages',
        rawImages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.RawImage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.BinocularGaze>(
        'RawBinocularGaze',
        rawBinocularGaze_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.BinocularGaze value) => value.writeToBuffer()));
  }

  $async.Stream<$0.PositioningMessage> positioning_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* positioning(call, await request);
  }

  $async.Stream<$0.Point> gaze_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* gaze(call, await request);
  }

  $async.Stream<$0.TriggerMessage> trigger_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* trigger(call, await request);
  }

  $async.Future<$0.Button> getButton_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getButton(call, await request);
  }

  $async.Future<$0.ButtonActions> setButton_Pre($grpc.ServiceCall call, $async.Future<$0.ButtonActions> request) async {
    return setButton(call, await request);
  }

  $async.Future<$0.Options> configure_Pre($grpc.ServiceCall call, $async.Future<$0.OptionMessage> request) async {
    return configure(call, await request);
  }

  $async.Future<$0.DeviceVersions> getVersions_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getVersions(call, await request);
  }

  $async.Stream<$0.Profile> getProfiles_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* getProfiles(call, await request);
  }

  $async.Future<$0.Profile> currentProfile_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return currentProfile(call, await request);
  }

  $async.Future<$0.StatusMessage> setProfile_Pre($grpc.ServiceCall call, $async.Future<$0.Profile> request) async {
    return setProfile(call, await request);
  }

  $async.Future<$0.StatusMessage> deleteProfile_Pre($grpc.ServiceCall call, $async.Future<$0.Profile> request) async {
    return deleteProfile(call, await request);
  }

  $async.Future<$0.StatusMessage> reset_Pre($grpc.ServiceCall call, $async.Future<$0.ResetMessage> request) async {
    return reset(call, await request);
  }

  $async.Stream<$0.RawImage> rawImages_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* rawImages(call, await request);
  }

  $async.Stream<$0.BinocularGaze> rawBinocularGaze_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* rawBinocularGaze(call, await request);
  }

  $async.Stream<$0.CalibMessages> calibrate($grpc.ServiceCall call, $async.Stream<$0.CalibControlMessages> request);
  $async.Stream<$0.PositioningMessage> positioning($grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$0.Point> gaze($grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$0.TriggerMessage> trigger($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.Button> getButton($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.ButtonActions> setButton($grpc.ServiceCall call, $0.ButtonActions request);
  $async.Future<$0.Options> configure($grpc.ServiceCall call, $0.OptionMessage request);
  $async.Future<$0.DeviceVersions> getVersions($grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$0.Profile> getProfiles($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.Profile> currentProfile($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.StatusMessage> setProfile($grpc.ServiceCall call, $0.Profile request);
  $async.Future<$0.StatusMessage> deleteProfile($grpc.ServiceCall call, $0.Profile request);
  $async.Future<$0.StatusMessage> reset($grpc.ServiceCall call, $0.ResetMessage request);
  $async.Stream<$0.Point> cursorCalibration($grpc.ServiceCall call, $async.Stream<$0.CalibCursorMessages> request);
  $async.Stream<$0.RawImage> rawImages($grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$0.BinocularGaze> rawBinocularGaze($grpc.ServiceCall call, $1.Empty request);
}
