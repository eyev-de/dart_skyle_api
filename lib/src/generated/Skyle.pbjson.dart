///
//  Generated code. Do not modify.
//  source: Skyle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use triggerMessageDescriptor instead')
const TriggerMessage$json = const {
  '1': 'TriggerMessage',
  '2': const [
    const {'1': 'singleClick', '3': 1, '4': 1, '5': 8, '10': 'singleClick'},
    const {'1': 'doubleClick', '3': 2, '4': 1, '5': 8, '10': 'doubleClick'},
    const {'1': 'holdClick', '3': 3, '4': 1, '5': 8, '10': 'holdClick'},
    const {'1': 'fixation', '3': 4, '4': 1, '5': 8, '10': 'fixation'},
  ],
};

/// Descriptor for `TriggerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List triggerMessageDescriptor = $convert.base64Decode('Cg5UcmlnZ2VyTWVzc2FnZRIgCgtzaW5nbGVDbGljaxgBIAEoCFILc2luZ2xlQ2xpY2sSIAoLZG91YmxlQ2xpY2sYAiABKAhSC2RvdWJsZUNsaWNrEhwKCWhvbGRDbGljaxgDIAEoCFIJaG9sZENsaWNrEhoKCGZpeGF0aW9uGAQgASgIUghmaXhhdGlvbg==');
@$core.Deprecated('Use resetMessageDescriptor instead')
const ResetMessage$json = const {
  '1': 'ResetMessage',
  '2': const [
    const {'1': 'services', '3': 1, '4': 1, '5': 8, '10': 'services'},
    const {'1': 'device', '3': 2, '4': 1, '5': 8, '10': 'device'},
    const {'1': 'data', '3': 3, '4': 1, '5': 8, '10': 'data'},
  ],
};

/// Descriptor for `ResetMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetMessageDescriptor = $convert.base64Decode('CgxSZXNldE1lc3NhZ2USGgoIc2VydmljZXMYASABKAhSCHNlcnZpY2VzEhYKBmRldmljZRgCIAEoCFIGZGV2aWNlEhIKBGRhdGEYAyABKAhSBGRhdGE=');
@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 5, '10': 'ID'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'skill', '3': 3, '4': 1, '5': 14, '6': '.Skyle.Profile.Skill', '10': 'skill'},
  ],
  '4': const [Profile_Skill$json],
};

@$core.Deprecated('Use profileDescriptor instead')
const Profile_Skill$json = const {
  '1': 'Skill',
  '2': const [
    const {'1': 'Low', '2': 0},
    const {'1': 'Medium', '2': 1},
    const {'1': 'High', '2': 2},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode('CgdQcm9maWxlEg4KAklEGAEgASgFUgJJRBISCgRuYW1lGAIgASgJUgRuYW1lEioKBXNraWxsGAMgASgOMhQuU2t5bGUuUHJvZmlsZS5Ta2lsbFIFc2tpbGwiJgoFU2tpbGwSBwoDTG93EAASCgoGTWVkaXVtEAESCAoESGlnaBAC');
@$core.Deprecated('Use statusMessageDescriptor instead')
const StatusMessage$json = const {
  '1': 'StatusMessage',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `StatusMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusMessageDescriptor = $convert.base64Decode('Cg1TdGF0dXNNZXNzYWdlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use optionMessageDescriptor instead')
const OptionMessage$json = const {
  '1': 'OptionMessage',
  '2': const [
    const {'1': 'empty', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Empty', '9': 0, '10': 'empty'},
    const {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Options', '9': 0, '10': 'options'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `OptionMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionMessageDescriptor = $convert.base64Decode('Cg1PcHRpb25NZXNzYWdlEi4KBWVtcHR5GAEgASgLMhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5SABSBWVtcHR5EioKB29wdGlvbnMYAiABKAsyDi5Ta3lsZS5PcHRpb25zSABSB29wdGlvbnNCCQoHbWVzc2FnZQ==');
@$core.Deprecated('Use calibControlMessagesDescriptor instead')
const calibControlMessages$json = const {
  '1': 'calibControlMessages',
  '2': const [
    const {'1': 'calibControl', '3': 1, '4': 1, '5': 11, '6': '.Skyle.CalibControl', '9': 0, '10': 'calibControl'},
    const {'1': 'calibImprove', '3': 2, '4': 1, '5': 11, '6': '.Skyle.CalibImprove', '9': 0, '10': 'calibImprove'},
    const {'1': 'calibConfirm', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibConfirm', '9': 0, '10': 'calibConfirm'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `calibControlMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibControlMessagesDescriptor = $convert.base64Decode('ChRjYWxpYkNvbnRyb2xNZXNzYWdlcxI5CgxjYWxpYkNvbnRyb2wYASABKAsyEy5Ta3lsZS5DYWxpYkNvbnRyb2xIAFIMY2FsaWJDb250cm9sEjkKDGNhbGliSW1wcm92ZRgCIAEoCzITLlNreWxlLkNhbGliSW1wcm92ZUgAUgxjYWxpYkltcHJvdmUSOQoMY2FsaWJDb25maXJtGAMgASgLMhMuU2t5bGUuQ2FsaWJDb25maXJtSABSDGNhbGliQ29uZmlybUIJCgdtZXNzYWdl');
@$core.Deprecated('Use calibCursorMessagesDescriptor instead')
const calibCursorMessages$json = const {
  '1': 'calibCursorMessages',
  '2': const [
    const {'1': 'empty', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Empty', '9': 0, '10': 'empty'},
    const {'1': 'calibConfirm', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibConfirm', '9': 0, '10': 'calibConfirm'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `calibCursorMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibCursorMessagesDescriptor = $convert.base64Decode('ChNjYWxpYkN1cnNvck1lc3NhZ2VzEi4KBWVtcHR5GAEgASgLMhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5SABSBWVtcHR5EjkKDGNhbGliQ29uZmlybRgDIAEoCzITLlNreWxlLkNhbGliQ29uZmlybUgAUgxjYWxpYkNvbmZpcm1CCQoHbWVzc2FnZQ==');
@$core.Deprecated('Use calibControlDescriptor instead')
const CalibControl$json = const {
  '1': 'CalibControl',
  '2': const [
    const {'1': 'calibrate', '3': 1, '4': 1, '5': 8, '10': 'calibrate'},
    const {'1': 'numberOfPoints', '3': 2, '4': 1, '5': 5, '10': 'numberOfPoints'},
    const {'1': 'abort', '3': 3, '4': 1, '5': 8, '10': 'abort'},
    const {'1': 'stopHID', '3': 4, '4': 1, '5': 8, '10': 'stopHID'},
    const {'1': 'res', '3': 5, '4': 1, '5': 11, '6': '.Skyle.ScreenResolution', '10': 'res'},
    const {'1': 'stepByStep', '3': 6, '4': 1, '5': 8, '10': 'stepByStep'},
  ],
};

/// Descriptor for `CalibControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibControlDescriptor = $convert.base64Decode('CgxDYWxpYkNvbnRyb2wSHAoJY2FsaWJyYXRlGAEgASgIUgljYWxpYnJhdGUSJgoObnVtYmVyT2ZQb2ludHMYAiABKAVSDm51bWJlck9mUG9pbnRzEhQKBWFib3J0GAMgASgIUgVhYm9ydBIYCgdzdG9wSElEGAQgASgIUgdzdG9wSElEEikKA3JlcxgFIAEoCzIXLlNreWxlLlNjcmVlblJlc29sdXRpb25SA3JlcxIeCgpzdGVwQnlTdGVwGAYgASgIUgpzdGVwQnlTdGVw');
@$core.Deprecated('Use screenResolutionDescriptor instead')
const ScreenResolution$json = const {
  '1': 'ScreenResolution',
  '2': const [
    const {'1': 'width', '3': 5, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 6, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'widthinMM', '3': 7, '4': 1, '5': 5, '10': 'widthinMM'},
    const {'1': 'heightinMM', '3': 8, '4': 1, '5': 5, '10': 'heightinMM'},
  ],
};

/// Descriptor for `ScreenResolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List screenResolutionDescriptor = $convert.base64Decode('ChBTY3JlZW5SZXNvbHV0aW9uEhQKBXdpZHRoGAUgASgFUgV3aWR0aBIWCgZoZWlnaHQYBiABKAVSBmhlaWdodBIcCgl3aWR0aGluTU0YByABKAVSCXdpZHRoaW5NTRIeCgpoZWlnaHRpbk1NGAggASgFUgpoZWlnaHRpbk1N');
@$core.Deprecated('Use calibImproveDescriptor instead')
const CalibImprove$json = const {
  '1': 'CalibImprove',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 5, '10': 'rating'},
    const {'1': 'stopHID', '3': 2, '4': 1, '5': 8, '10': 'stopHID'},
  ],
};

/// Descriptor for `CalibImprove`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibImproveDescriptor = $convert.base64Decode('CgxDYWxpYkltcHJvdmUSFgoGcmF0aW5nGAEgASgFUgZyYXRpbmcSGAoHc3RvcEhJRBgCIAEoCFIHc3RvcEhJRA==');
@$core.Deprecated('Use calibConfirmDescriptor instead')
const CalibConfirm$json = const {
  '1': 'CalibConfirm',
  '2': const [
    const {'1': 'confirmed', '3': 1, '4': 1, '5': 8, '10': 'confirmed'},
  ],
};

/// Descriptor for `CalibConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibConfirmDescriptor = $convert.base64Decode('CgxDYWxpYkNvbmZpcm0SHAoJY29uZmlybWVkGAEgASgIUgljb25maXJtZWQ=');
@$core.Deprecated('Use calibMessagesDescriptor instead')
const CalibMessages$json = const {
  '1': 'CalibMessages',
  '2': const [
    const {'1': 'calibControl', '3': 1, '4': 1, '5': 11, '6': '.Skyle.CalibControl', '9': 0, '10': 'calibControl'},
    const {'1': 'calibPoint', '3': 2, '4': 1, '5': 11, '6': '.Skyle.CalibPoint', '9': 0, '10': 'calibPoint'},
    const {'1': 'calibQuality', '3': 3, '4': 1, '5': 11, '6': '.Skyle.CalibQuality', '9': 0, '10': 'calibQuality'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

/// Descriptor for `CalibMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibMessagesDescriptor = $convert.base64Decode('Cg1DYWxpYk1lc3NhZ2VzEjkKDGNhbGliQ29udHJvbBgBIAEoCzITLlNreWxlLkNhbGliQ29udHJvbEgAUgxjYWxpYkNvbnRyb2wSMwoKY2FsaWJQb2ludBgCIAEoCzIRLlNreWxlLkNhbGliUG9pbnRIAFIKY2FsaWJQb2ludBI5CgxjYWxpYlF1YWxpdHkYAyABKAsyEy5Ta3lsZS5DYWxpYlF1YWxpdHlIAFIMY2FsaWJRdWFsaXR5QgkKB21lc3NhZ2U=');
@$core.Deprecated('Use pointDescriptor instead')
const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode('CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');
@$core.Deprecated('Use calibPointDescriptor instead')
const CalibPoint$json = const {
  '1': 'CalibPoint',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'currentPoint', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'currentPoint'},
  ],
};

/// Descriptor for `CalibPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibPointDescriptor = $convert.base64Decode('CgpDYWxpYlBvaW50EhQKBWNvdW50GAEgASgFUgVjb3VudBIwCgxjdXJyZW50UG9pbnQYAiABKAsyDC5Ta3lsZS5Qb2ludFIMY3VycmVudFBvaW50');
@$core.Deprecated('Use calibQualityDescriptor instead')
const CalibQuality$json = const {
  '1': 'CalibQuality',
  '2': const [
    const {'1': 'quality', '3': 1, '4': 1, '5': 1, '10': 'quality'},
    const {'1': 'qualitys', '3': 2, '4': 3, '5': 1, '10': 'qualitys'},
  ],
};

/// Descriptor for `CalibQuality`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calibQualityDescriptor = $convert.base64Decode('CgxDYWxpYlF1YWxpdHkSGAoHcXVhbGl0eRgBIAEoAVIHcXVhbGl0eRIaCghxdWFsaXR5cxgCIAMoAVIIcXVhbGl0eXM=');
@$core.Deprecated('Use positioningMessageDescriptor instead')
const PositioningMessage$json = const {
  '1': 'PositioningMessage',
  '2': const [
    const {'1': 'leftEye', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'leftEye'},
    const {'1': 'rightEye', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Point', '10': 'rightEye'},
    const {'1': 'qualityDepth', '3': 3, '4': 1, '5': 5, '10': 'qualityDepth'},
    const {'1': 'qualitySides', '3': 4, '4': 1, '5': 5, '10': 'qualitySides'},
    const {'1': 'qualityXAxis', '3': 5, '4': 1, '5': 5, '10': 'qualityXAxis'},
    const {'1': 'qualityYAxis', '3': 6, '4': 1, '5': 5, '10': 'qualityYAxis'},
  ],
};

/// Descriptor for `PositioningMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positioningMessageDescriptor = $convert.base64Decode('ChJQb3NpdGlvbmluZ01lc3NhZ2USJgoHbGVmdEV5ZRgBIAEoCzIMLlNreWxlLlBvaW50UgdsZWZ0RXllEigKCHJpZ2h0RXllGAIgASgLMgwuU2t5bGUuUG9pbnRSCHJpZ2h0RXllEiIKDHF1YWxpdHlEZXB0aBgDIAEoBVIMcXVhbGl0eURlcHRoEiIKDHF1YWxpdHlTaWRlcxgEIAEoBVIMcXVhbGl0eVNpZGVzEiIKDHF1YWxpdHlYQXhpcxgFIAEoBVIMcXVhbGl0eVhBeGlzEiIKDHF1YWxpdHlZQXhpcxgGIAEoBVIMcXVhbGl0eVlBeGlz');
@$core.Deprecated('Use optionsDescriptor instead')
const Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'stream', '3': 1, '4': 1, '5': 8, '10': 'stream'},
    const {'1': 'enablePause', '3': 2, '4': 1, '5': 8, '10': 'enablePause'},
    const {'1': 'pause', '3': 3, '4': 1, '5': 8, '10': 'pause'},
    const {'1': 'guidance', '3': 4, '4': 1, '5': 8, '10': 'guidance'},
    const {'1': 'enableStandby', '3': 5, '4': 1, '5': 8, '10': 'enableStandby'},
    const {'1': 'disableMouse', '3': 6, '4': 1, '5': 8, '10': 'disableMouse'},
    const {'1': 'filter', '3': 7, '4': 1, '5': 11, '6': '.Skyle.FilterOptions', '10': 'filter'},
    const {'1': 'iPadOptions', '3': 8, '4': 1, '5': 11, '6': '.Skyle.IPadOptions', '10': 'iPadOptions'},
    const {'1': 'res', '3': 9, '4': 1, '5': 11, '6': '.Skyle.ScreenResolution', '10': 'res'},
    const {'1': 'hp', '3': 10, '4': 1, '5': 8, '10': 'hp'},
  ],
};

/// Descriptor for `Options`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionsDescriptor = $convert.base64Decode('CgdPcHRpb25zEhYKBnN0cmVhbRgBIAEoCFIGc3RyZWFtEiAKC2VuYWJsZVBhdXNlGAIgASgIUgtlbmFibGVQYXVzZRIUCgVwYXVzZRgDIAEoCFIFcGF1c2USGgoIZ3VpZGFuY2UYBCABKAhSCGd1aWRhbmNlEiQKDWVuYWJsZVN0YW5kYnkYBSABKAhSDWVuYWJsZVN0YW5kYnkSIgoMZGlzYWJsZU1vdXNlGAYgASgIUgxkaXNhYmxlTW91c2USLAoGZmlsdGVyGAcgASgLMhQuU2t5bGUuRmlsdGVyT3B0aW9uc1IGZmlsdGVyEjQKC2lQYWRPcHRpb25zGAggASgLMhIuU2t5bGUuSVBhZE9wdGlvbnNSC2lQYWRPcHRpb25zEikKA3JlcxgJIAEoCzIXLlNreWxlLlNjcmVlblJlc29sdXRpb25SA3JlcxIOCgJocBgKIAEoCFICaHA=');
@$core.Deprecated('Use iPadOptionsDescriptor instead')
const IPadOptions$json = const {
  '1': 'IPadOptions',
  '2': const [
    const {'1': 'isOldiOS', '3': 1, '4': 1, '5': 8, '10': 'isOldiOS'},
    const {'1': 'isNotZommed', '3': 2, '4': 1, '5': 8, '10': 'isNotZommed'},
    const {'1': 'model', '3': 3, '4': 1, '5': 14, '6': '.Skyle.IPadOptions.iPadModel', '10': 'model'},
  ],
  '4': const [IPadOptions_iPadModel$json],
};

@$core.Deprecated('Use iPadOptionsDescriptor instead')
const IPadOptions_iPadModel$json = const {
  '1': 'iPadModel',
  '2': const [
    const {'1': 'iPad8_5', '2': 0},
    const {'1': 'iPad8_6', '2': 1},
    const {'1': 'iPad8_7', '2': 2},
    const {'1': 'iPad8_8', '2': 3},
    const {'1': 'iPad8_11', '2': 4},
    const {'1': 'iPad8_12', '2': 5},
    const {'1': 'iPad13_1', '2': 6},
    const {'1': 'iPad13_2', '2': 7},
    const {'1': 'iPad13_8', '2': 8},
    const {'1': 'iPad13_9', '2': 9},
    const {'1': 'iPad13_10', '2': 10},
    const {'1': 'iPad13_11', '2': 11},
    const {'1': 'iPad13_16', '2': 12},
    const {'1': 'iPad13_17', '2': 13},
  ],
};

/// Descriptor for `IPadOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPadOptionsDescriptor = $convert.base64Decode('CgtJUGFkT3B0aW9ucxIaCghpc09sZGlPUxgBIAEoCFIIaXNPbGRpT1MSIAoLaXNOb3Rab21tZWQYAiABKAhSC2lzTm90Wm9tbWVkEjIKBW1vZGVsGAMgASgOMhwuU2t5bGUuSVBhZE9wdGlvbnMuaVBhZE1vZGVsUgVtb2RlbCLPAQoJaVBhZE1vZGVsEgsKB2lQYWQ4XzUQABILCgdpUGFkOF82EAESCwoHaVBhZDhfNxACEgsKB2lQYWQ4XzgQAxIMCghpUGFkOF8xMRAEEgwKCGlQYWQ4XzEyEAUSDAoIaVBhZDEzXzEQBhIMCghpUGFkMTNfMhAHEgwKCGlQYWQxM184EAgSDAoIaVBhZDEzXzkQCRINCglpUGFkMTNfMTAQChINCglpUGFkMTNfMTEQCxINCglpUGFkMTNfMTYQDBINCglpUGFkMTNfMTcQDQ==');
@$core.Deprecated('Use deviceVersionsDescriptor instead')
const DeviceVersions$json = const {
  '1': 'DeviceVersions',
  '2': const [
    const {'1': 'firmware', '3': 1, '4': 1, '5': 9, '10': 'firmware'},
    const {'1': 'eyetracker', '3': 2, '4': 1, '5': 9, '10': 'eyetracker'},
    const {'1': 'calib', '3': 3, '4': 1, '5': 9, '10': 'calib'},
    const {'1': 'base', '3': 4, '4': 1, '5': 9, '10': 'base'},
    const {'1': 'serial', '3': 5, '4': 1, '5': 4, '10': 'serial'},
    const {'1': 'skyleType', '3': 6, '4': 1, '5': 5, '10': 'skyleType'},
    const {'1': 'isDemo', '3': 7, '4': 1, '5': 8, '10': 'isDemo'},
  ],
};

/// Descriptor for `DeviceVersions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceVersionsDescriptor = $convert.base64Decode('Cg5EZXZpY2VWZXJzaW9ucxIaCghmaXJtd2FyZRgBIAEoCVIIZmlybXdhcmUSHgoKZXlldHJhY2tlchgCIAEoCVIKZXlldHJhY2tlchIUCgVjYWxpYhgDIAEoCVIFY2FsaWISEgoEYmFzZRgEIAEoCVIEYmFzZRIWCgZzZXJpYWwYBSABKARSBnNlcmlhbBIcCglza3lsZVR5cGUYBiABKAVSCXNreWxlVHlwZRIWCgZpc0RlbW8YByABKAhSBmlzRGVtbw==');
@$core.Deprecated('Use buttonActionsDescriptor instead')
const ButtonActions$json = const {
  '1': 'ButtonActions',
  '2': const [
    const {'1': 'singleClick', '3': 1, '4': 1, '5': 9, '10': 'singleClick'},
    const {'1': 'doubleClick', '3': 2, '4': 1, '5': 9, '10': 'doubleClick'},
    const {'1': 'holdClick', '3': 3, '4': 1, '5': 9, '10': 'holdClick'},
  ],
};

/// Descriptor for `ButtonActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonActionsDescriptor = $convert.base64Decode('Cg1CdXR0b25BY3Rpb25zEiAKC3NpbmdsZUNsaWNrGAEgASgJUgtzaW5nbGVDbGljaxIgCgtkb3VibGVDbGljaxgCIAEoCVILZG91YmxlQ2xpY2sSHAoJaG9sZENsaWNrGAMgASgJUglob2xkQ2xpY2s=');
@$core.Deprecated('Use buttonDescriptor instead')
const Button$json = const {
  '1': 'Button',
  '2': const [
    const {'1': 'isPresent', '3': 1, '4': 1, '5': 8, '10': 'isPresent'},
    const {'1': 'buttonActions', '3': 2, '4': 1, '5': 11, '6': '.Skyle.ButtonActions', '10': 'buttonActions'},
    const {'1': 'availableActions', '3': 3, '4': 3, '5': 9, '10': 'availableActions'},
  ],
};

/// Descriptor for `Button`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonDescriptor = $convert.base64Decode('CgZCdXR0b24SHAoJaXNQcmVzZW50GAEgASgIUglpc1ByZXNlbnQSOgoNYnV0dG9uQWN0aW9ucxgCIAEoCzIULlNreWxlLkJ1dHRvbkFjdGlvbnNSDWJ1dHRvbkFjdGlvbnMSKgoQYXZhaWxhYmxlQWN0aW9ucxgDIAMoCVIQYXZhaWxhYmxlQWN0aW9ucw==');
@$core.Deprecated('Use filterOptionsDescriptor instead')
const FilterOptions$json = const {
  '1': 'FilterOptions',
  '2': const [
    const {'1': 'fixationFilter', '3': 1, '4': 1, '5': 5, '10': 'fixationFilter'},
    const {'1': 'gazeFilter', '3': 2, '4': 1, '5': 5, '10': 'gazeFilter'},
  ],
};

/// Descriptor for `FilterOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterOptionsDescriptor = $convert.base64Decode('Cg1GaWx0ZXJPcHRpb25zEiYKDmZpeGF0aW9uRmlsdGVyGAEgASgFUg5maXhhdGlvbkZpbHRlchIeCgpnYXplRmlsdGVyGAIgASgFUgpnYXplRmlsdGVy');
