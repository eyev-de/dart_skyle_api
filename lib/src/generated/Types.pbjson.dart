// This is a generated file - do not edit.
//
// Generated from Types.proto.

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

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor =
    $convert.base64Decode('CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use sizeDescriptor instead')
const Size$json = {
  '1': 'Size',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 1, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 1, '10': 'height'},
  ],
};

/// Descriptor for `Size`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeDescriptor = $convert.base64Decode(
    'CgRTaXplEhQKBXdpZHRoGAEgASgBUgV3aWR0aBIWCgZoZWlnaHQYAiABKAFSBmhlaWdodA==');

@$core.Deprecated('Use rectangleDescriptor instead')
const Rectangle$json = {
  '1': 'Rectangle',
  '2': [
    {
      '1': 'topLeft',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'topLeft'
    },
    {
      '1': 'size',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Size',
      '10': 'size'
    },
  ],
};

/// Descriptor for `Rectangle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectangleDescriptor = $convert.base64Decode(
    'CglSZWN0YW5nbGUSLAoHdG9wTGVmdBgBIAEoCzISLlNreWxlLlR5cGVzLlBvaW50Ugd0b3BMZW'
    'Z0EiUKBHNpemUYAiABKAsyES5Ta3lsZS5UeXBlcy5TaXplUgRzaXpl');

@$core.Deprecated('Use rotatedRectangleDescriptor instead')
const RotatedRectangle$json = {
  '1': 'RotatedRectangle',
  '2': [
    {
      '1': 'center',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'center'
    },
    {
      '1': 'size',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Size',
      '10': 'size'
    },
    {'1': 'angle', '3': 3, '4': 1, '5': 1, '10': 'angle'},
  ],
};

/// Descriptor for `RotatedRectangle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rotatedRectangleDescriptor = $convert.base64Decode(
    'ChBSb3RhdGVkUmVjdGFuZ2xlEioKBmNlbnRlchgBIAEoCzISLlNreWxlLlR5cGVzLlBvaW50Ug'
    'ZjZW50ZXISJQoEc2l6ZRgCIAEoCzIRLlNreWxlLlR5cGVzLlNpemVSBHNpemUSFAoFYW5nbGUY'
    'AyABKAFSBWFuZ2xl');

@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = {
  '1': 'Feature',
  '2': [
    {
      '1': 'center',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'center'
    },
    {
      '1': 'ellipse',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.RotatedRectangle',
      '10': 'ellipse'
    },
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode(
    'CgdGZWF0dXJlEioKBmNlbnRlchgBIAEoCzISLlNreWxlLlR5cGVzLlBvaW50UgZjZW50ZXISNw'
    'oHZWxsaXBzZRgCIAEoCzIdLlNreWxlLlR5cGVzLlJvdGF0ZWRSZWN0YW5nbGVSB2VsbGlwc2U=');

@$core.Deprecated('Use glintsDescriptor instead')
const Glints$json = {
  '1': 'Glints',
  '2': [
    {
      '1': 'left',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Feature',
      '10': 'left'
    },
    {
      '1': 'right',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Feature',
      '10': 'right'
    },
  ],
};

/// Descriptor for `Glints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glintsDescriptor = $convert.base64Decode(
    'CgZHbGludHMSKAoEbGVmdBgBIAEoCzIULlNreWxlLlR5cGVzLkZlYXR1cmVSBGxlZnQSKgoFcm'
    'lnaHQYAiABKAsyFC5Ta3lsZS5UeXBlcy5GZWF0dXJlUgVyaWdodA==');

@$core.Deprecated('Use gazeDescriptor instead')
const Gaze$json = {
  '1': 'Gaze',
  '2': [
    {
      '1': 'raw',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'raw'
    },
    {
      '1': 'smoothed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'smoothed'
    },
  ],
};

/// Descriptor for `Gaze`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gazeDescriptor = $convert.base64Decode(
    'CgRHYXplEiQKA3JhdxgBIAEoCzISLlNreWxlLlR5cGVzLlBvaW50UgNyYXcSLgoIc21vb3RoZW'
    'QYAiABKAsyEi5Ta3lsZS5UeXBlcy5Qb2ludFIIc21vb3RoZWQ=');

@$core.Deprecated('Use eyeDescriptor instead')
const Eye$json = {
  '1': 'Eye',
  '2': [
    {
      '1': 'keyPoint',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Point',
      '10': 'keyPoint'
    },
    {
      '1': 'iris',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Feature',
      '10': 'iris'
    },
    {
      '1': 'pupil',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Feature',
      '10': 'pupil'
    },
    {
      '1': 'glints',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Glints',
      '10': 'glints'
    },
    {'1': 'distance', '3': 5, '4': 1, '5': 1, '10': 'distance'},
    {
      '1': 'boundingRect',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Rectangle',
      '10': 'boundingRect'
    },
    {
      '1': 'gaze',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Gaze',
      '10': 'gaze'
    },
  ],
};

/// Descriptor for `Eye`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eyeDescriptor = $convert.base64Decode(
    'CgNFeWUSLgoIa2V5UG9pbnQYASABKAsyEi5Ta3lsZS5UeXBlcy5Qb2ludFIIa2V5UG9pbnQSKA'
    'oEaXJpcxgCIAEoCzIULlNreWxlLlR5cGVzLkZlYXR1cmVSBGlyaXMSKgoFcHVwaWwYAyABKAsy'
    'FC5Ta3lsZS5UeXBlcy5GZWF0dXJlUgVwdXBpbBIrCgZnbGludHMYBCABKAsyEy5Ta3lsZS5UeX'
    'Blcy5HbGludHNSBmdsaW50cxIaCghkaXN0YW5jZRgFIAEoAVIIZGlzdGFuY2USOgoMYm91bmRp'
    'bmdSZWN0GAYgASgLMhYuU2t5bGUuVHlwZXMuUmVjdGFuZ2xlUgxib3VuZGluZ1JlY3QSJQoEZ2'
    'F6ZRgHIAEoCzIRLlNreWxlLlR5cGVzLkdhemVSBGdhemU=');

@$core.Deprecated('Use eyesDescriptor instead')
const Eyes$json = {
  '1': 'Eyes',
  '2': [
    {
      '1': 'left',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Eye',
      '10': 'left'
    },
    {
      '1': 'right',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Eye',
      '10': 'right'
    },
  ],
};

/// Descriptor for `Eyes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eyesDescriptor = $convert.base64Decode(
    'CgRFeWVzEiQKBGxlZnQYASABKAsyEC5Ta3lsZS5UeXBlcy5FeWVSBGxlZnQSJgoFcmlnaHQYAi'
    'ABKAsyEC5Ta3lsZS5UeXBlcy5FeWVSBXJpZ2h0');

@$core.Deprecated('Use faceDescriptor instead')
const Face$json = {
  '1': 'Face',
  '2': [
    {
      '1': 'boundingRect',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Rectangle',
      '10': 'boundingRect'
    },
    {
      '1': 'eyes',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Skyle.Types.Eyes',
      '10': 'eyes'
    },
    {'1': 'id', '3': 3, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `Face`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List faceDescriptor = $convert.base64Decode(
    'CgRGYWNlEjoKDGJvdW5kaW5nUmVjdBgBIAEoCzIWLlNreWxlLlR5cGVzLlJlY3RhbmdsZVIMYm'
    '91bmRpbmdSZWN0EiUKBGV5ZXMYAiABKAsyES5Ta3lsZS5UeXBlcy5FeWVzUgRleWVzEg4KAmlk'
    'GAMgASgMUgJpZA==');

@$core.Deprecated('Use matDescriptor instead')
const Mat$json = {
  '1': 'Mat',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 5, '10': 'height'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Skyle.Types.Mat.MatType',
      '10': 'type'
    },
  ],
  '4': [Mat_MatType$json],
};

@$core.Deprecated('Use matDescriptor instead')
const Mat_MatType$json = {
  '1': 'MatType',
  '2': [
    {'1': 'CV_8UC1', '2': 0},
    {'1': 'CV_8UC3', '2': 1},
    {'1': 'CV_8UC4', '2': 2},
    {'1': 'CV_16UC1', '2': 3},
    {'1': 'CV_16UC3', '2': 4},
    {'1': 'CV_16UC4', '2': 5},
    {'1': 'CV_32FC1', '2': 6},
    {'1': 'CV_32FC3', '2': 7},
    {'1': 'CV_32FC4', '2': 8},
    {'1': 'CV_64FC1', '2': 9},
    {'1': 'CV_64FC3', '2': 10},
    {'1': 'CV_64FC4', '2': 11},
  ],
};

/// Descriptor for `Mat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matDescriptor = $convert.base64Decode(
    'CgNNYXQSFAoFd2lkdGgYASABKAVSBXdpZHRoEhYKBmhlaWdodBgCIAEoBVIGaGVpZ2h0EhIKBG'
    'RhdGEYAyABKAxSBGRhdGESLAoEdHlwZRgEIAEoDjIYLlNreWxlLlR5cGVzLk1hdC5NYXRUeXBl'
    'UgR0eXBlIq4BCgdNYXRUeXBlEgsKB0NWXzhVQzEQABILCgdDVl84VUMzEAESCwoHQ1ZfOFVDNB'
    'ACEgwKCENWXzE2VUMxEAMSDAoIQ1ZfMTZVQzMQBBIMCghDVl8xNlVDNBAFEgwKCENWXzMyRkMx'
    'EAYSDAoIQ1ZfMzJGQzMQBxIMCghDVl8zMkZDNBAIEgwKCENWXzY0RkMxEAkSDAoIQ1ZfNjRGQz'
    'MQChIMCghDVl82NEZDNBAL');
