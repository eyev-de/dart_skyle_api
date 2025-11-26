// This is a generated file - do not edit.
//
// Generated from Skyle.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'package:protobuf/well_known_types/google/protobuf/empty.pbjson.dart'
    as $0;

import 'Types.pbjson.dart' as $1;

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
    {
      '1': 'skill',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Skyle.Profile.Skill',
      '10': 'skill'
    },
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
final $typed_data.Uint8List statusMessageDescriptor = $convert
    .base64Decode('Cg1TdGF0dXNNZXNzYWdlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use optionMessageDescriptor instead')
const OptionMessage$json = {
  '1': 'OptionMessage',
  '2': [
    {
      '1': 'empty',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'empty'
    },
    {
      '1': 'options',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Options',
      '9': 0,
      '10': 'options'
    },
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
    {
      '1': 'calibControl',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibControl',
      '9': 0,
      '10': 'calibControl'
    },
    {
      '1': 'calibImprove',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibImprove',
      '9': 0,
      '10': 'calibImprove'
    },
    {
      '1': 'calibConfirm',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibConfirm',
      '9': 0,
      '10': 'calibConfirm'
    },
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
    {
      '1': 'empty',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'empty'
    },
    {
      '1': 'calibConfirm',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibConfirm',
      '9': 0,
      '10': 'calibConfirm'
    },
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
    {
      '1': 'res',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Skyle.ScreenResolution',
      '10': 'res'
    },
    {'1': 'stepByStep', '3': 6, '4': 1, '5': 8, '10': 'stepByStep'},
    {
      '1': 'calibrationPoints',
      '3': 7,
      '4': 3,
      '5': 5,
      '10': 'calibrationPoints'
    },
  ],
};

/// Descriptor for `CalibControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibControlDescriptor = $convert.base64Decode(
    'CgxDYWxpYkNvbnRyb2wSHAoJY2FsaWJyYXRlGAEgASgIUgljYWxpYnJhdGUSJgoObnVtYmVyT2'
    'ZQb2ludHMYAiABKAVSDm51bWJlck9mUG9pbnRzEhQKBWFib3J0GAMgASgIUgVhYm9ydBIYCgdz'
    'dG9wSElEGAQgASgIUgdzdG9wSElEEikKA3JlcxgFIAEoCzIXLlNreWxlLlNjcmVlblJlc29sdX'
    'Rpb25SA3JlcxIeCgpzdGVwQnlTdGVwGAYgASgIUgpzdGVwQnlTdGVwEiwKEWNhbGlicmF0aW9u'
    'UG9pbnRzGAcgAygFUhFjYWxpYnJhdGlvblBvaW50cw==');

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
    {
      '1': 'calibControl',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibControl',
      '9': 0,
      '10': 'calibControl'
    },
    {
      '1': 'calibPoint',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibPoint',
      '9': 0,
      '10': 'calibPoint'
    },
    {
      '1': 'calibQuality',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Skyle.CalibQuality',
      '9': 0,
      '10': 'calibQuality'
    },
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
    {
      '1': 'leftGaze',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'leftGaze'
    },
    {
      '1': 'rightGaze',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'rightGaze'
    },
  ],
};

/// Descriptor for `BinocularGaze`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binocularGazeDescriptor = $convert.base64Decode(
    'Cg1CaW5vY3VsYXJHYXplEi4KCGxlZnRHYXplGAEgASgLMhIuU2t5bGUuVHlwZXMuUG9pbnRSCG'
    'xlZnRHYXplEjAKCXJpZ2h0R2F6ZRgCIAEoCzISLlNreWxlLlR5cGVzLlBvaW50UglyaWdodEdh'
    'emU=');

@$core.Deprecated('Use calibPointDescriptor instead')
const CalibPoint$json = {
  '1': 'CalibPoint',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {
      '1': 'currentPoint',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'currentPoint'
    },
  ],
};

/// Descriptor for `CalibPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibPointDescriptor = $convert.base64Decode(
    'CgpDYWxpYlBvaW50EhQKBWNvdW50GAEgASgFUgVjb3VudBI2CgxjdXJyZW50UG9pbnQYAiABKA'
    'syEi5Ta3lsZS5UeXBlcy5Qb2ludFIMY3VycmVudFBvaW50');

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
    {
      '1': 'leftEye',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'leftEye'
    },
    {
      '1': 'rightEye',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'rightEye'
    },
    {'1': 'distanceQuality', '3': 3, '4': 1, '5': 5, '10': 'distanceQuality'},
    {
      '1': 'positioningQuality',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'positioningQuality'
    },
    {
      '1': 'horizontalQuality',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'horizontalQuality'
    },
    {'1': 'verticalQuality', '3': 6, '4': 1, '5': 5, '10': 'verticalQuality'},
    {
      '1': 'face',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Face',
      '9': 0,
      '10': 'face',
      '17': true
    },
  ],
  '8': [
    {'1': '_face'},
  ],
};

/// Descriptor for `PositioningMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positioningMessageDescriptor = $convert.base64Decode(
    'ChJQb3NpdGlvbmluZ01lc3NhZ2USLAoHbGVmdEV5ZRgBIAEoCzISLlNreWxlLlR5cGVzLlBvaW'
    '50UgdsZWZ0RXllEi4KCHJpZ2h0RXllGAIgASgLMhIuU2t5bGUuVHlwZXMuUG9pbnRSCHJpZ2h0'
    'RXllEigKD2Rpc3RhbmNlUXVhbGl0eRgDIAEoBVIPZGlzdGFuY2VRdWFsaXR5Ei4KEnBvc2l0aW'
    '9uaW5nUXVhbGl0eRgEIAEoBVIScG9zaXRpb25pbmdRdWFsaXR5EiwKEWhvcml6b250YWxRdWFs'
    'aXR5GAUgASgFUhFob3Jpem9udGFsUXVhbGl0eRIoCg92ZXJ0aWNhbFF1YWxpdHkYBiABKAVSD3'
    'ZlcnRpY2FsUXVhbGl0eRIqCgRmYWNlGAcgASgLMhEuU2t5bGUuVHlwZXMuRmFjZUgAUgRmYWNl'
    'iAEBQgcKBV9mYWNl');

@$core.Deprecated('Use optionsDescriptor instead')
const Options$json = {
  '1': 'Options',
  '2': [
    {
      '1': 'enableVideoStream',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'enableVideoStream'
    },
    {'1': 'enableAutoPause', '3': 2, '4': 1, '5': 8, '10': 'enableAutoPause'},
    {'1': 'enablePause', '3': 3, '4': 1, '5': 8, '10': 'enablePause'},
    {
      '1': 'enablePositioningStream',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'enablePositioningStream'
    },
    {
      '1': 'enableAutoStandby',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'enableAutoStandby'
    },
    {'1': 'disableMouse', '3': 6, '4': 1, '5': 8, '10': 'disableMouse'},
    {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Skyle.FilterOptions',
      '10': 'filter'
    },
    {
      '1': 'iPadOptions',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Skyle.IPadOptions',
      '10': 'iPadOptions'
    },
    {
      '1': 'res',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.Skyle.ScreenResolution',
      '10': 'res'
    },
    {'1': 'hp', '3': 10, '4': 1, '5': 8, '10': 'hp'},
    {
      '1': 'eyeUsage',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.Skyle.Options.eyeUse',
      '10': 'eyeUsage'
    },
    {
      '1': 'enableTrackingDetails',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'enableTrackingDetails'
    },
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
    'CgdPcHRpb25zEiwKEWVuYWJsZVZpZGVvU3RyZWFtGAEgASgIUhFlbmFibGVWaWRlb1N0cmVhbR'
    'IoCg9lbmFibGVBdXRvUGF1c2UYAiABKAhSD2VuYWJsZUF1dG9QYXVzZRIgCgtlbmFibGVQYXVz'
    'ZRgDIAEoCFILZW5hYmxlUGF1c2USOAoXZW5hYmxlUG9zaXRpb25pbmdTdHJlYW0YBCABKAhSF2'
    'VuYWJsZVBvc2l0aW9uaW5nU3RyZWFtEiwKEWVuYWJsZUF1dG9TdGFuZGJ5GAUgASgIUhFlbmFi'
    'bGVBdXRvU3RhbmRieRIiCgxkaXNhYmxlTW91c2UYBiABKAhSDGRpc2FibGVNb3VzZRIsCgZmaW'
    'x0ZXIYByABKAsyFC5Ta3lsZS5GaWx0ZXJPcHRpb25zUgZmaWx0ZXISNAoLaVBhZE9wdGlvbnMY'
    'CCABKAsyEi5Ta3lsZS5JUGFkT3B0aW9uc1ILaVBhZE9wdGlvbnMSKQoDcmVzGAkgASgLMhcuU2'
    't5bGUuU2NyZWVuUmVzb2x1dGlvblIDcmVzEg4KAmhwGAogASgIUgJocBIxCghleWVVc2FnZRgL'
    'IAEoDjIVLlNreWxlLk9wdGlvbnMuZXllVXNlUghleWVVc2FnZRI0ChVlbmFibGVUcmFja2luZ0'
    'RldGFpbHMYDCABKAhSFWVuYWJsZVRyYWNraW5nRGV0YWlscyInCgZleWVVc2USCAoEQm90aBAA'
    'EggKBExlZnQQARIJCgVSaWdodBAC');

@$core.Deprecated('Use iPadOptionsDescriptor instead')
const IPadOptions$json = {
  '1': 'IPadOptions',
  '2': [
    {'1': 'isOldiOS', '3': 1, '4': 1, '5': 8, '10': 'isOldiOS'},
    {'1': 'isNotZoomed', '3': 2, '4': 1, '5': 8, '10': 'isNotZoomed'},
    {
      '1': 'model',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Skyle.IPadOptions.iPadModel',
      '9': 0,
      '10': 'model'
    },
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
    {'1': 'IPad16_1', '2': 38},
    {'1': 'IPad16_2', '2': 39},
    {'1': 'IPad17_3', '2': 40},
    {'1': 'IPad17_4', '2': 41},
    {'1': 'IPad17_1', '2': 42},
    {'1': 'IPad17_2', '2': 43},
    {'1': 'IPad15_5', '2': 44},
    {'1': 'IPad15_6', '2': 45},
    {'1': 'IPad15_3', '2': 46},
    {'1': 'IPad15_4', '2': 47},
  ],
};

/// Descriptor for `IPadOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPadOptionsDescriptor = $convert.base64Decode(
    'CgtJUGFkT3B0aW9ucxIaCghpc09sZGlPUxgBIAEoCFIIaXNPbGRpT1MSIAoLaXNOb3Rab29tZW'
    'QYAiABKAhSC2lzTm90Wm9vbWVkEjQKBW1vZGVsGAMgASgOMhwuU2t5bGUuSVBhZE9wdGlvbnMu'
    'aVBhZE1vZGVsSABSBW1vZGVsIqgFCglpUGFkTW9kZWwSCwoHSVBhZDhfNRAAEgsKB0lQYWQ4Xz'
    'YQARILCgdJUGFkOF83EAISCwoHSVBhZDhfOBADEgwKCElQYWQ4XzExEAQSDAoISVBhZDhfMTIQ'
    'BRIMCghJUGFkMTNfMRAGEgwKCElQYWQxM18yEAcSDAoISVBhZDEzXzgQCBIMCghJUGFkMTNfOR'
    'AJEg0KCUlQYWQxM18xMBAKEg0KCUlQYWQxM18xMRALEg0KCUlQYWQxM18xNhAMEg0KCUlQYWQx'
    'M18xNxANEgsKB0lQYWQ4XzEQDhILCgdJUGFkOF8yEA8SCwoHSVBhZDhfMxAQEgsKB0lQYWQ4Xz'
    'QQERILCgdJUGFkOF85EBISDAoISVBhZDhfMTAQExIMCghJUGFkMTNfNBAUEgwKCElQYWQxM181'
    'EBUSDAoISVBhZDEzXzYQFhIMCghJUGFkMTNfNxAXEgwKCElQYWQxNF8xEBgSDAoISVBhZDE0Xz'
    'IQGRIMCghJUGFkMTRfMxAaEgwKCElQYWQxNF80EBsSDAoISVBhZDE0XzUQHBIMCghJUGFkMTRf'
    'NhAdEgwKCElQYWQxNF84EB4SDAoISVBhZDE0XzkQHxINCglJUGFkMTRfMTAQIBINCglJUGFkMT'
    'RfMTEQIRIMCghJUGFkMTZfMxAiEgwKCElQYWQxNl80ECMSDAoISVBhZDE2XzUQJBIMCghJUGFk'
    'MTZfNhAlEgwKCElQYWQxNl8xECYSDAoISVBhZDE2XzIQJxIMCghJUGFkMTdfMxAoEgwKCElQYW'
    'QxN180ECkSDAoISVBhZDE3XzEQKhIMCghJUGFkMTdfMhArEgwKCElQYWQxNV81ECwSDAoISVBh'
    'ZDE1XzYQLRIMCghJUGFkMTVfMxAuEgwKCElQYWQxNV80EC9CEAoOb3B0aW9uYWxfbW9kZWw=');

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
    {
      '1': 'buttonActions',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.ButtonActions',
      '10': 'buttonActions'
    },
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

const $core.Map<$core.String, $core.dynamic> SkyleServiceBase$json = {
  '1': 'Skyle',
  '2': [
    {
      '1': 'Calibrate',
      '2': '.Skyle.CalibControlMessages',
      '3': '.Skyle.CalibMessages',
      '5': true,
      '6': true
    },
    {
      '1': 'Positioning',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.PositioningMessage',
      '6': true
    },
    {
      '1': 'Gaze',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.Types.Point',
      '6': true
    },
    {
      '1': 'Trigger',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.TriggerMessage',
      '6': true
    },
    {'1': 'GetButton', '2': '.google.protobuf.Empty', '3': '.Skyle.Button'},
    {
      '1': 'SetButton',
      '2': '.Skyle.ButtonActions',
      '3': '.Skyle.ButtonActions'
    },
    {'1': 'Configure', '2': '.Skyle.OptionMessage', '3': '.Skyle.Options'},
    {
      '1': 'ConfigureStream',
      '2': '.Skyle.OptionMessage',
      '3': '.Skyle.Options',
      '5': true,
      '6': true
    },
    {
      '1': 'GetVersions',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.DeviceVersions'
    },
    {
      '1': 'GetProfiles',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.Profile',
      '6': true
    },
    {
      '1': 'CurrentProfile',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.Profile'
    },
    {'1': 'SetProfile', '2': '.Skyle.Profile', '3': '.Skyle.StatusMessage'},
    {'1': 'DeleteProfile', '2': '.Skyle.Profile', '3': '.Skyle.StatusMessage'},
    {'1': 'Reset', '2': '.Skyle.ResetMessage', '3': '.Skyle.StatusMessage'},
    {
      '1': 'CursorCalibration',
      '2': '.Skyle.CalibCursorMessages',
      '3': '.Skyle.Types.Point',
      '5': true,
      '6': true
    },
    {
      '1': 'RawImages',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.Types.Mat',
      '6': true
    },
    {
      '1': 'RawBinocularGaze',
      '2': '.google.protobuf.Empty',
      '3': '.Skyle.BinocularGaze',
      '6': true
    },
  ],
};

@$core.Deprecated('Use skyleServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    SkyleServiceBase$messageJson = {
  '.Skyle.CalibControlMessages': CalibControlMessages$json,
  '.Skyle.CalibControl': CalibControl$json,
  '.Skyle.ScreenResolution': ScreenResolution$json,
  '.Skyle.CalibImprove': CalibImprove$json,
  '.Skyle.CalibConfirm': CalibConfirm$json,
  '.Skyle.CalibMessages': CalibMessages$json,
  '.Skyle.CalibPoint': CalibPoint$json,
  '.Skyle.Types.Point': $1.Point$json,
  '.Skyle.CalibQuality': CalibQuality$json,
  '.google.protobuf.Empty': $0.Empty$json,
  '.Skyle.PositioningMessage': PositioningMessage$json,
  '.Skyle.Types.Face': $1.Face$json,
  '.Skyle.Types.Rectangle': $1.Rectangle$json,
  '.Skyle.Types.Size': $1.Size$json,
  '.Skyle.Types.Eyes': $1.Eyes$json,
  '.Skyle.Types.Eye': $1.Eye$json,
  '.Skyle.Types.Feature': $1.Feature$json,
  '.Skyle.Types.RotatedRectangle': $1.RotatedRectangle$json,
  '.Skyle.Types.Glints': $1.Glints$json,
  '.Skyle.Types.Gaze': $1.Gaze$json,
  '.Skyle.TriggerMessage': TriggerMessage$json,
  '.Skyle.Button': Button$json,
  '.Skyle.ButtonActions': ButtonActions$json,
  '.Skyle.OptionMessage': OptionMessage$json,
  '.Skyle.Options': Options$json,
  '.Skyle.FilterOptions': FilterOptions$json,
  '.Skyle.IPadOptions': IPadOptions$json,
  '.Skyle.DeviceVersions': DeviceVersions$json,
  '.Skyle.Profile': Profile$json,
  '.Skyle.StatusMessage': StatusMessage$json,
  '.Skyle.ResetMessage': ResetMessage$json,
  '.Skyle.CalibCursorMessages': CalibCursorMessages$json,
  '.Skyle.Types.Mat': $1.Mat$json,
  '.Skyle.BinocularGaze': BinocularGaze$json,
};

/// Descriptor for `Skyle`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List skyleServiceDescriptor = $convert.base64Decode(
    'CgVTa3lsZRJCCglDYWxpYnJhdGUSGy5Ta3lsZS5DYWxpYkNvbnRyb2xNZXNzYWdlcxoULlNreW'
    'xlLkNhbGliTWVzc2FnZXMoATABEkIKC1Bvc2l0aW9uaW5nEhYuZ29vZ2xlLnByb3RvYnVmLkVt'
    'cHR5GhkuU2t5bGUuUG9zaXRpb25pbmdNZXNzYWdlMAESNAoER2F6ZRIWLmdvb2dsZS5wcm90b2'
    'J1Zi5FbXB0eRoSLlNreWxlLlR5cGVzLlBvaW50MAESOgoHVHJpZ2dlchIWLmdvb2dsZS5wcm90'
    'b2J1Zi5FbXB0eRoVLlNreWxlLlRyaWdnZXJNZXNzYWdlMAESMgoJR2V0QnV0dG9uEhYuZ29vZ2'
    'xlLnByb3RvYnVmLkVtcHR5Gg0uU2t5bGUuQnV0dG9uEjcKCVNldEJ1dHRvbhIULlNreWxlLkJ1'
    'dHRvbkFjdGlvbnMaFC5Ta3lsZS5CdXR0b25BY3Rpb25zEjEKCUNvbmZpZ3VyZRIULlNreWxlLk'
    '9wdGlvbk1lc3NhZ2UaDi5Ta3lsZS5PcHRpb25zEjsKD0NvbmZpZ3VyZVN0cmVhbRIULlNreWxl'
    'Lk9wdGlvbk1lc3NhZ2UaDi5Ta3lsZS5PcHRpb25zKAEwARI8CgtHZXRWZXJzaW9ucxIWLmdvb2'
    'dsZS5wcm90b2J1Zi5FbXB0eRoVLlNreWxlLkRldmljZVZlcnNpb25zEjcKC0dldFByb2ZpbGVz'
    'EhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5Gg4uU2t5bGUuUHJvZmlsZTABEjgKDkN1cnJlbnRQcm'
    '9maWxlEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5Gg4uU2t5bGUuUHJvZmlsZRIyCgpTZXRQcm9m'
    'aWxlEg4uU2t5bGUuUHJvZmlsZRoULlNreWxlLlN0YXR1c01lc3NhZ2USNQoNRGVsZXRlUHJvZm'
    'lsZRIOLlNreWxlLlByb2ZpbGUaFC5Ta3lsZS5TdGF0dXNNZXNzYWdlEjIKBVJlc2V0EhMuU2t5'
    'bGUuUmVzZXRNZXNzYWdlGhQuU2t5bGUuU3RhdHVzTWVzc2FnZRJHChFDdXJzb3JDYWxpYnJhdG'
    'lvbhIaLlNreWxlLkNhbGliQ3Vyc29yTWVzc2FnZXMaEi5Ta3lsZS5UeXBlcy5Qb2ludCgBMAES'
    'NwoJUmF3SW1hZ2VzEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhAuU2t5bGUuVHlwZXMuTWF0MA'
    'ESQgoQUmF3Qmlub2N1bGFyR2F6ZRIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eRoULlNreWxlLkJp'
    'bm9jdWxhckdhemUwAQ==');
