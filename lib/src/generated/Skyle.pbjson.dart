//
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rawImageDescriptor instead')
const RawImage$json = {
  '1': 'RawImage',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 5, '10': 'height'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `RawImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawImageDescriptor = $convert.base64Decode(
    'CghSYXdJbWFnZRIUCgV3aWR0aBgBIAEoBVIFd2lkdGgSFgoGaGVpZ2h0GAIgASgFUgZoZWlnaH'
    'QSEgoEZGF0YRgDIAEoDFIEZGF0YQ==');

@$core.Deprecated('Use triggerMessageDescriptor instead')
const TriggerMessage$json = {
  '1': 'TriggerMessage',
  '2': [
    {'1': 'singleClick', '3': 1, '4': 1, '5': 8, '10': 'singleClick'},
    {'1': 'doubleClick', '3': 2, '4': 1, '5': 8, '10': 'doubleClick'},
    {'1': 'holdClick', '3': 3, '4': 1, '5': 8, '10': 'holdClick'},
    {'1': 'fixation', '3': 4, '4': 1, '5': 8, '10': 'fixation'},
  ],
};

/// Descriptor for `TriggerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List triggerMessageDescriptor = $convert.base64Decode(
    'Cg5UcmlnZ2VyTWVzc2FnZRIgCgtzaW5nbGVDbGljaxgBIAEoCFILc2luZ2xlQ2xpY2sSIAoLZG'
    '91YmxlQ2xpY2sYAiABKAhSC2RvdWJsZUNsaWNrEhwKCWhvbGRDbGljaxgDIAEoCFIJaG9sZENs'
    'aWNrEhoKCGZpeGF0aW9uGAQgASgIUghmaXhhdGlvbg==');

@$core.Deprecated('Use resetMessageDescriptor instead')
const ResetMessage$json = {
  '1': 'ResetMessage',
  '2': [
    {'1': 'services', '3': 1, '4': 1, '5': 8, '10': 'services'},
    {'1': 'device', '3': 2, '4': 1, '5': 8, '10': 'device'},
    {'1': 'data', '3': 3, '4': 1, '5': 8, '10': 'data'},
  ],
};

/// Descriptor for `ResetMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetMessageDescriptor = $convert.base64Decode(
    'CgxSZXNldE1lc3NhZ2USGgoIc2VydmljZXMYASABKAhSCHNlcnZpY2VzEhYKBmRldmljZRgCIA'
    'EoCFIGZGV2aWNlEhIKBGRhdGEYAyABKAhSBGRhdGE=');

@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = {
  '1': 'Profile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'skill', '3': 3, '4': 1, '5': 14, '6': '.Skyle.Profile.Skill', '10': 'skill'},
  ],
  '4': [Profile_Skill$json],
};

@$core.Deprecated('Use profileDescriptor instead')
const Profile_Skill$json = {
  '1': 'Skill',
  '2': [
    {'1': 'Low', '2': 0},
    {'1': 'Medium', '2': 1},
    {'1': 'High', '2': 2},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEioKBXNraWxsGA'
    'MgASgOMhQuU2t5bGUuUHJvZmlsZS5Ta2lsbFIFc2tpbGwiJgoFU2tpbGwSBwoDTG93EAASCgoG'
    'TWVkaXVtEAESCAoESGlnaBAC');

@$core.Deprecated('Use statusMessageDescriptor instead')
const StatusMessage$json = {
  '1': 'StatusMessage',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `StatusMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusMessageDescriptor = $convert.base64Decode(
    'Cg1TdGF0dXNNZXNzYWdlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use optionMessageDescriptor instead')
const OptionMessage$json = {
  '1': 'OptionMessage',
  '2': [
    {'1': 'empty', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Empty', '9': 0, '10': 'empty'},
    {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Options', '9': 0, '10': 'options'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `OptionMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionMessageDescriptor = $convert.base64Decode(
    'Cg1PcHRpb25NZXNzYWdlEi4KBWVtcHR5GAEgASgLMhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5SA'
    'BSBWVtcHR5EioKB29wdGlvbnMYAiABKAsyDi5Ta3lsZS5PcHRpb25zSABSB29wdGlvbnNCCQoH'
    'bWVzc2FnZQ==');

@$core.Deprecated('Use calibControlMessagesDescriptor instead')
const CalibControlMessages$json = {
  '1': 'CalibControlMessages',
  '2': [
    {'1': 'calibControl', '3': 1, '4': 1, '5': 11, '6': '.Skyle.CalibControl', '9': 0, '10': 'calibControl'},
    {'1': 'calibImprove', '3': 2, '4': 1, '5': 11, '6': '.Skyle.CalibImprove', '9': 0, '10': 'calibImprove'},
    {'1': 'calibConfirm', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibConfirm', '9': 0, '10': 'calibConfirm'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `CalibControlMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibControlMessagesDescriptor = $convert.base64Decode(
    'ChRDYWxpYkNvbnRyb2xNZXNzYWdlcxI5CgxjYWxpYkNvbnRyb2wYASABKAsyEy5Ta3lsZS5DYW'
    'xpYkNvbnRyb2xIAFIMY2FsaWJDb250cm9sEjkKDGNhbGliSW1wcm92ZRgCIAEoCzITLlNreWxl'
    'LkNhbGliSW1wcm92ZUgAUgxjYWxpYkltcHJvdmUSOQoMY2FsaWJDb25maXJtGAMgASgLMhMuU2'
    't5bGUuQ2FsaWJDb25maXJtSABSDGNhbGliQ29uZmlybUIJCgdtZXNzYWdl');

@$core.Deprecated('Use calibCursorMessagesDescriptor instead')
const CalibCursorMessages$json = {
  '1': 'CalibCursorMessages',
  '2': [
    {'1': 'empty', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Empty', '9': 0, '10': 'empty'},
    {'1': 'calibConfirm', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibConfirm', '9': 0, '10': 'calibConfirm'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `CalibCursorMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibCursorMessagesDescriptor = $convert.base64Decode(
    'ChNDYWxpYkN1cnNvck1lc3NhZ2VzEi4KBWVtcHR5GAEgASgLMhYuZ29vZ2xlLnByb3RvYnVmLk'
    'VtcHR5SABSBWVtcHR5EjkKDGNhbGliQ29uZmlybRgDIAEoCzITLlNreWxlLkNhbGliQ29uZmly'
    'bUgAUgxjYWxpYkNvbmZpcm1CCQoHbWVzc2FnZQ==');

@$core.Deprecated('Use calibControlDescriptor instead')
const CalibControl$json = {
  '1': 'CalibControl',
  '2': [
    {'1': 'calibrate', '3': 1, '4': 1, '5': 8, '10': 'calibrate'},
    {'1': 'numberOfPoints', '3': 2, '4': 1, '5': 5, '10': 'numberOfPoints'},
    {'1': 'abort', '3': 3, '4': 1, '5': 8, '10': 'abort'},
    {'1': 'stopHID', '3': 4, '4': 1, '5': 8, '10': 'stopHID'},
    {'1': 'res', '3': 5, '4': 1, '5': 11, '6': '.Skyle.ScreenResolution', '10': 'res'},
    {'1': 'stepByStep', '3': 6, '4': 1, '5': 8, '10': 'stepByStep'},
  ],
};

/// Descriptor for `CalibControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibControlDescriptor = $convert.base64Decode(
    'CgxDYWxpYkNvbnRyb2wSHAoJY2FsaWJyYXRlGAEgASgIUgljYWxpYnJhdGUSJgoObnVtYmVyT2'
    'ZQb2ludHMYAiABKAVSDm51bWJlck9mUG9pbnRzEhQKBWFib3J0GAMgASgIUgVhYm9ydBIYCgdz'
    'dG9wSElEGAQgASgIUgdzdG9wSElEEikKA3JlcxgFIAEoCzIXLlNreWxlLlNjcmVlblJlc29sdX'
    'Rpb25SA3JlcxIeCgpzdGVwQnlTdGVwGAYgASgIUgpzdGVwQnlTdGVw');

@$core.Deprecated('Use screenResolutionDescriptor instead')
const ScreenResolution$json = {
  '1': 'ScreenResolution',
  '2': [
    {'1': 'width', '3': 5, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 6, '4': 1, '5': 5, '10': 'height'},
    {'1': 'widthInMM', '3': 7, '4': 1, '5': 5, '10': 'widthInMM'},
    {'1': 'heightInMM', '3': 8, '4': 1, '5': 5, '10': 'heightInMM'},
  ],
};

/// Descriptor for `ScreenResolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List screenResolutionDescriptor = $convert.base64Decode(
    'ChBTY3JlZW5SZXNvbHV0aW9uEhQKBXdpZHRoGAUgASgFUgV3aWR0aBIWCgZoZWlnaHQYBiABKA'
    'VSBmhlaWdodBIcCgl3aWR0aEluTU0YByABKAVSCXdpZHRoSW5NTRIeCgpoZWlnaHRJbk1NGAgg'
    'ASgFUgpoZWlnaHRJbk1N');

@$core.Deprecated('Use calibImproveDescriptor instead')
const CalibImprove$json = {
  '1': 'CalibImprove',
  '2': [
    {'1': 'rating', '3': 1, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'stopHID', '3': 2, '4': 1, '5': 8, '10': 'stopHID'},
  ],
};

/// Descriptor for `CalibImprove`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibImproveDescriptor = $convert.base64Decode(
    'CgxDYWxpYkltcHJvdmUSFgoGcmF0aW5nGAEgASgFUgZyYXRpbmcSGAoHc3RvcEhJRBgCIAEoCF'
    'IHc3RvcEhJRA==');

@$core.Deprecated('Use calibConfirmDescriptor instead')
const CalibConfirm$json = {
  '1': 'CalibConfirm',
  '2': [
    {'1': 'confirmed', '3': 1, '4': 1, '5': 8, '10': 'confirmed'},
  ],
};

/// Descriptor for `CalibConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibConfirmDescriptor = $convert.base64Decode(
    'CgxDYWxpYkNvbmZpcm0SHAoJY29uZmlybWVkGAEgASgIUgljb25maXJtZWQ=');

@$core.Deprecated('Use calibMessagesDescriptor instead')
const CalibMessages$json = {
  '1': 'CalibMessages',
  '2': [
    {'1': 'calibControl', '3': 1, '4': 1, '5': 11, '6': '.Skyle.CalibControl', '9': 0, '10': 'calibControl'},
    {'1': 'calibPoint', '3': 2, '4': 1, '5': 11, '6': '.Skyle.CalibPoint', '9': 0, '10': 'calibPoint'},
    {'1': 'calibQuality', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibQuality', '9': 0, '10': 'calibQuality'},
  ],
  '8': [
    {'1': 'message'},
  ],
};

/// Descriptor for `CalibMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibMessagesDescriptor = $convert.base64Decode(
    'Cg1DYWxpYk1lc3NhZ2VzEjkKDGNhbGliQ29udHJvbBgBIAEoCzITLlNreWxlLkNhbGliQ29udH'
    'JvbEgAUgxjYWxpYkNvbnRyb2wSMwoKY2FsaWJQb2ludBgCIAEoCzIRLlNreWxlLkNhbGliUG9p'
    'bnRIAFIKY2FsaWJQb2ludBI5CgxjYWxpYlF1YWxpdHkYAyABKAsyEy5Ta3lsZS5DYWxpYlF1YW'
    'xpdHlIAFIMY2FsaWJRdWFsaXR5QgkKB21lc3NhZ2U=');

@$core.Deprecated('Use binocularGazeDescriptor instead')
const BinocularGaze$json = {
  '1': 'BinocularGaze',
  '2': [
    {'1': 'leftGaze', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'leftGaze'},
    {'1': 'rightGaze', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'rightGaze'},
  ],
};

/// Descriptor for `BinocularGaze`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binocularGazeDescriptor = $convert.base64Decode(
    'Cg1CaW5vY3VsYXJHYXplEigKCGxlZnRHYXplGAEgASgLMgwuU2t5bGUuUG9pbnRSCGxlZnRHYX'
    'plEioKCXJpZ2h0R2F6ZRgCIAEoCzIMLlNreWxlLlBvaW50UglyaWdodEdhemU=');

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use calibPointDescriptor instead')
const CalibPoint$json = {
  '1': 'CalibPoint',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {'1': 'currentPoint', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'currentPoint'},
  ],
};

/// Descriptor for `CalibPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibPointDescriptor = $convert.base64Decode(
    'CgpDYWxpYlBvaW50EhQKBWNvdW50GAEgASgFUgVjb3VudBIwCgxjdXJyZW50UG9pbnQYAiABKA'
    'syDC5Ta3lsZS5Qb2ludFIMY3VycmVudFBvaW50');

@$core.Deprecated('Use calibQualityDescriptor instead')
const CalibQuality$json = {
  '1': 'CalibQuality',
  '2': [
    {'1': 'quality', '3': 1, '4': 1, '5': 1, '10': 'quality'},
    {'1': 'qualities', '3': 2, '4': 3, '5': 1, '10': 'qualities'},
  ],
};

/// Descriptor for `CalibQuality`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibQualityDescriptor = $convert.base64Decode(
    'CgxDYWxpYlF1YWxpdHkSGAoHcXVhbGl0eRgBIAEoAVIHcXVhbGl0eRIcCglxdWFsaXRpZXMYAi'
    'ADKAFSCXF1YWxpdGllcw==');

@$core.Deprecated('Use positioningMessageDescriptor instead')
const PositioningMessage$json = {
  '1': 'PositioningMessage',
  '2': [
    {'1': 'leftEye', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'leftEye'},
    {'1': 'rightEye', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'rightEye'},
    {'1': 'distanceQuality', '3': 3, '4': 1, '5': 5, '10': 'distanceQuality'},
    {'1': 'positioningQuality', '3': 4, '4': 1, '5': 5, '10': 'positioningQuality'},
    {'1': 'horizontalQuality', '3': 5, '4': 1, '5': 5, '10': 'horizontalQuality'},
    {'1': 'verticalQuality', '3': 6, '4': 1, '5': 5, '10': 'verticalQuality'},
  ],
};

/// Descriptor for `PositioningMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positioningMessageDescriptor = $convert.base64Decode(
    'ChJQb3NpdGlvbmluZ01lc3NhZ2USJgoHbGVmdEV5ZRgBIAEoCzIMLlNreWxlLlBvaW50UgdsZW'
    'Z0RXllEigKCHJpZ2h0RXllGAIgASgLMgwuU2t5bGUuUG9pbnRSCHJpZ2h0RXllEigKD2Rpc3Rh'
    'bmNlUXVhbGl0eRgDIAEoBVIPZGlzdGFuY2VRdWFsaXR5Ei4KEnBvc2l0aW9uaW5nUXVhbGl0eR'
    'gEIAEoBVIScG9zaXRpb25pbmdRdWFsaXR5EiwKEWhvcml6b250YWxRdWFsaXR5GAUgASgFUhFo'
    'b3Jpem9udGFsUXVhbGl0eRIoCg92ZXJ0aWNhbFF1YWxpdHkYBiABKAVSD3ZlcnRpY2FsUXVhbG'
    'l0eQ==');

@$core.Deprecated('Use optionsDescriptor instead')
const Options$json = {
  '1': 'Options',
  '2': [
    {'1': 'stream', '3': 1, '4': 1, '5': 8, '10': 'stream'},
    {'1': 'enablePause', '3': 2, '4': 1, '5': 8, '10': 'enablePause'},
    {'1': 'pause', '3': 3, '4': 1, '5': 8, '10': 'pause'},
    {'1': 'guidance', '3': 4, '4': 1, '5': 8, '10': 'guidance'},
    {'1': 'enableStandby', '3': 5, '4': 1, '5': 8, '10': 'enableStandby'},
    {'1': 'disableMouse', '3': 6, '4': 1, '5': 8, '10': 'disableMouse'},
    {'1': 'filter', '3': 7, '4': 1, '5': 11, '6': '.Skyle.FilterOptions', '10': 'filter'},
    {'1': 'iPadOptions', '3': 8, '4': 1, '5': 11, '6': '.Skyle.IPadOptions', '10': 'iPadOptions'},
    {'1': 'res', '3': 9, '4': 1, '5': 11, '6': '.Skyle.ScreenResolution', '10': 'res'},
    {'1': 'hp', '3': 10, '4': 1, '5': 8, '10': 'hp'},
    {'1': 'eyeUsage', '3': 11, '4': 1, '5': 14, '6': '.Skyle.Options.eyeUse', '10': 'eyeUsage'},
  ],
  '4': [Options_eyeUse$json],
};

@$core.Deprecated('Use optionsDescriptor instead')
const Options_eyeUse$json = {
  '1': 'eyeUse',
  '2': [
    {'1': 'Both', '2': 0},
    {'1': 'Left', '2': 1},
    {'1': 'Right', '2': 2},
  ],
};

/// Descriptor for `Options`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionsDescriptor = $convert.base64Decode(
    'CgdPcHRpb25zEhYKBnN0cmVhbRgBIAEoCFIGc3RyZWFtEiAKC2VuYWJsZVBhdXNlGAIgASgIUg'
    'tlbmFibGVQYXVzZRIUCgVwYXVzZRgDIAEoCFIFcGF1c2USGgoIZ3VpZGFuY2UYBCABKAhSCGd1'
    'aWRhbmNlEiQKDWVuYWJsZVN0YW5kYnkYBSABKAhSDWVuYWJsZVN0YW5kYnkSIgoMZGlzYWJsZU'
    '1vdXNlGAYgASgIUgxkaXNhYmxlTW91c2USLAoGZmlsdGVyGAcgASgLMhQuU2t5bGUuRmlsdGVy'
    'T3B0aW9uc1IGZmlsdGVyEjQKC2lQYWRPcHRpb25zGAggASgLMhIuU2t5bGUuSVBhZE9wdGlvbn'
    'NSC2lQYWRPcHRpb25zEikKA3JlcxgJIAEoCzIXLlNreWxlLlNjcmVlblJlc29sdXRpb25SA3Jl'
    'cxIOCgJocBgKIAEoCFICaHASMQoIZXllVXNhZ2UYCyABKA4yFS5Ta3lsZS5PcHRpb25zLmV5ZV'
    'VzZVIIZXllVXNhZ2UiJwoGZXllVXNlEggKBEJvdGgQABIICgRMZWZ0EAESCQoFUmlnaHQQAg==');

@$core.Deprecated('Use iPadOptionsDescriptor instead')
const IPadOptions$json = {
  '1': 'IPadOptions',
  '2': [
    {'1': 'isOldiOS', '3': 1, '4': 1, '5': 8, '10': 'isOldiOS'},
    {'1': 'isNotZoomed', '3': 2, '4': 1, '5': 8, '10': 'isNotZoomed'},
    {'1': 'model', '3': 3, '4': 1, '5': 14, '6': '.Skyle.IPadOptions.iPadModel', '9': 0, '10': 'model'},
  ],
  '4': [IPadOptions_iPadModel$json],
  '8': [
    {'1': 'optional_model'},
  ],
};

@$core.Deprecated('Use iPadOptionsDescriptor instead')
const IPadOptions_iPadModel$json = {
  '1': 'iPadModel',
  '2': [
    {'1': 'IPad8_5', '2': 0},
    {'1': 'IPad8_6', '2': 1},
    {'1': 'IPad8_7', '2': 2},
    {'1': 'IPad8_8', '2': 3},
    {'1': 'IPad8_11', '2': 4},
    {'1': 'IPad8_12', '2': 5},
    {'1': 'IPad13_1', '2': 6},
    {'1': 'IPad13_2', '2': 7},
    {'1': 'IPad13_8', '2': 8},
    {'1': 'IPad13_9', '2': 9},
    {'1': 'IPad13_10', '2': 10},
    {'1': 'IPad13_11', '2': 11},
    {'1': 'IPad13_16', '2': 12},
    {'1': 'IPad13_17', '2': 13},
    {'1': 'IPad8_1', '2': 14},
    {'1': 'IPad8_2', '2': 15},
    {'1': 'IPad8_3', '2': 16},
    {'1': 'IPad8_4', '2': 17},
    {'1': 'IPad8_9', '2': 18},
    {'1': 'IPad8_10', '2': 19},
    {'1': 'IPad13_4', '2': 20},
    {'1': 'IPad13_5', '2': 21},
    {'1': 'IPad13_6', '2': 22},
    {'1': 'IPad13_7', '2': 23},
    {'1': 'IPad14_1', '2': 24},
    {'1': 'IPad14_2', '2': 25},
    {'1': 'IPad14_3', '2': 26},
    {'1': 'IPad14_4', '2': 27},
    {'1': 'IPad14_5', '2': 28},
    {'1': 'IPad14_6', '2': 29},
    {'1': 'IPad14_8', '2': 30},
    {'1': 'IPad14_9', '2': 31},
    {'1': 'IPad14_10', '2': 32},
    {'1': 'IPad14_11', '2': 33},
    {'1': 'IPad16_3', '2': 34},
    {'1': 'IPad16_4', '2': 35},
    {'1': 'IPad16_5', '2': 36},
    {'1': 'IPad16_6', '2': 37},
  ],
};

/// Descriptor for `IPadOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPadOptionsDescriptor = $convert.base64Decode(
    'CgtJUGFkT3B0aW9ucxIaCghpc09sZGlPUxgBIAEoCFIIaXNPbGRpT1MSIAoLaXNOb3Rab29tZW'
    'QYAiABKAhSC2lzTm90Wm9vbWVkEjQKBW1vZGVsGAMgASgOMhwuU2t5bGUuSVBhZE9wdGlvbnMu'
    'aVBhZE1vZGVsSABSBW1vZGVsIpwECglpUGFkTW9kZWwSCwoHSVBhZDhfNRAAEgsKB0lQYWQ4Xz'
    'YQARILCgdJUGFkOF83EAISCwoHSVBhZDhfOBADEgwKCElQYWQ4XzExEAQSDAoISVBhZDhfMTIQ'
    'BRIMCghJUGFkMTNfMRAGEgwKCElQYWQxM18yEAcSDAoISVBhZDEzXzgQCBIMCghJUGFkMTNfOR'
    'AJEg0KCUlQYWQxM18xMBAKEg0KCUlQYWQxM18xMRALEg0KCUlQYWQxM18xNhAMEg0KCUlQYWQx'
    'M18xNxANEgsKB0lQYWQ4XzEQDhILCgdJUGFkOF8yEA8SCwoHSVBhZDhfMxAQEgsKB0lQYWQ4Xz'
    'QQERILCgdJUGFkOF85EBISDAoISVBhZDhfMTAQExIMCghJUGFkMTNfNBAUEgwKCElQYWQxM181'
    'EBUSDAoISVBhZDEzXzYQFhIMCghJUGFkMTNfNxAXEgwKCElQYWQxNF8xEBgSDAoISVBhZDE0Xz'
    'IQGRIMCghJUGFkMTRfMxAaEgwKCElQYWQxNF80EBsSDAoISVBhZDE0XzUQHBIMCghJUGFkMTRf'
    'NhAdEgwKCElQYWQxNF84EB4SDAoISVBhZDE0XzkQHxINCglJUGFkMTRfMTAQIBINCglJUGFkMT'
    'RfMTEQIRIMCghJUGFkMTZfMxAiEgwKCElQYWQxNl80ECMSDAoISVBhZDE2XzUQJBIMCghJUGFk'
    'MTZfNhAlQhAKDm9wdGlvbmFsX21vZGVs');

@$core.Deprecated('Use deviceVersionsDescriptor instead')
const DeviceVersions$json = {
  '1': 'DeviceVersions',
  '2': [
    {'1': 'firmware', '3': 1, '4': 1, '5': 9, '10': 'firmware'},
    {'1': 'eyetracker', '3': 2, '4': 1, '5': 9, '10': 'eyetracker'},
    {'1': 'calib', '3': 3, '4': 1, '5': 9, '10': 'calib'},
    {'1': 'base', '3': 4, '4': 1, '5': 9, '10': 'base'},
    {'1': 'serial', '3': 5, '4': 1, '5': 4, '10': 'serial'},
    {'1': 'skyleType', '3': 6, '4': 1, '5': 5, '10': 'skyleType'},
    {'1': 'isDemo', '3': 7, '4': 1, '5': 8, '10': 'isDemo'},
  ],
};

/// Descriptor for `DeviceVersions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceVersionsDescriptor = $convert.base64Decode(
    'Cg5EZXZpY2VWZXJzaW9ucxIaCghmaXJtd2FyZRgBIAEoCVIIZmlybXdhcmUSHgoKZXlldHJhY2'
    'tlchgCIAEoCVIKZXlldHJhY2tlchIUCgVjYWxpYhgDIAEoCVIFY2FsaWISEgoEYmFzZRgEIAEo'
    'CVIEYmFzZRIWCgZzZXJpYWwYBSABKARSBnNlcmlhbBIcCglza3lsZVR5cGUYBiABKAVSCXNreW'
    'xlVHlwZRIWCgZpc0RlbW8YByABKAhSBmlzRGVtbw==');

@$core.Deprecated('Use buttonActionsDescriptor instead')
const ButtonActions$json = {
  '1': 'ButtonActions',
  '2': [
    {'1': 'singleClick', '3': 1, '4': 1, '5': 9, '10': 'singleClick'},
    {'1': 'doubleClick', '3': 2, '4': 1, '5': 9, '10': 'doubleClick'},
    {'1': 'holdClick', '3': 3, '4': 1, '5': 9, '10': 'holdClick'},
  ],
};

/// Descriptor for `ButtonActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonActionsDescriptor = $convert.base64Decode(
    'Cg1CdXR0b25BY3Rpb25zEiAKC3NpbmdsZUNsaWNrGAEgASgJUgtzaW5nbGVDbGljaxIgCgtkb3'
    'VibGVDbGljaxgCIAEoCVILZG91YmxlQ2xpY2sSHAoJaG9sZENsaWNrGAMgASgJUglob2xkQ2xp'
    'Y2s=');

@$core.Deprecated('Use buttonDescriptor instead')
const Button$json = {
  '1': 'Button',
  '2': [
    {'1': 'isPresent', '3': 1, '4': 1, '5': 8, '10': 'isPresent'},
    {'1': 'buttonActions', '3': 2, '4': 1, '5': 11, '6': '.Skyle.ButtonActions', '10': 'buttonActions'},
    {'1': 'availableActions', '3': 3, '4': 3, '5': 9, '10': 'availableActions'},
  ],
};

/// Descriptor for `Button`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonDescriptor = $convert.base64Decode(
    'CgZCdXR0b24SHAoJaXNQcmVzZW50GAEgASgIUglpc1ByZXNlbnQSOgoNYnV0dG9uQWN0aW9ucx'
    'gCIAEoCzIULlNreWxlLkJ1dHRvbkFjdGlvbnNSDWJ1dHRvbkFjdGlvbnMSKgoQYXZhaWxhYmxl'
    'QWN0aW9ucxgDIAMoCVIQYXZhaWxhYmxlQWN0aW9ucw==');

@$core.Deprecated('Use filterOptionsDescriptor instead')
const FilterOptions$json = {
  '1': 'FilterOptions',
  '2': [
    {'1': 'fixationFilter', '3': 1, '4': 1, '5': 5, '10': 'fixationFilter'},
    {'1': 'gazeFilter', '3': 2, '4': 1, '5': 5, '10': 'gazeFilter'},
  ],
};

/// Descriptor for `FilterOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterOptionsDescriptor = $convert.base64Decode(
    'Cg1GaWx0ZXJPcHRpb25zEiYKDmZpeGF0aW9uRmlsdGVyGAEgASgFUg5maXhhdGlvbkZpbHRlch'
    'IeCgpnYXplRmlsdGVyGAIgASgFUgpnYXplRmlsdGVy');

