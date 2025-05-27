//
//  Generated code. Do not modify.
//  source: Types.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

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
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

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
    {'1': 'topLeft', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Point', '10': 'topLeft'},
    {'1': 'size', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Size', '10': 'size'},
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
    {'1': 'center', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Point', '10': 'center'},
    {'1': 'size', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Size', '10': 'size'},
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
    {'1': 'center', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Point', '10': 'center'},
    {'1': 'ellipse', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.RotatedRectangle', '10': 'ellipse'},
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
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Feature', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Feature', '10': 'right'},
  ],
};

/// Descriptor for `Glints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glintsDescriptor = $convert.base64Decode(
    'CgZHbGludHMSKAoEbGVmdBgBIAEoCzIULlNreWxlLlR5cGVzLkZlYXR1cmVSBGxlZnQSKgoFcm'
    'lnaHQYAiABKAsyFC5Ta3lsZS5UeXBlcy5GZWF0dXJlUgVyaWdodA==');

@$core.Deprecated('Use eyeDescriptor instead')
const Eye$json = {
  '1': 'Eye',
  '2': [
    {'1': 'keyPoint', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Point', '10': 'keyPoint'},
    {'1': 'iris', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Feature', '10': 'iris'},
    {'1': 'pupil', '3': 3, '4': 1, '5': 11, '6': '.Skyle.Types.Feature', '10': 'pupil'},
    {'1': 'glints', '3': 4, '4': 1, '5': 11, '6': '.Skyle.Types.Glints', '10': 'glints'},
    {'1': 'distance', '3': 5, '4': 1, '5': 1, '10': 'distance'},
    {'1': 'boundingRect', '3': 6, '4': 1, '5': 11, '6': '.Skyle.Types.Rectangle', '10': 'boundingRect'},
  ],
};

/// Descriptor for `Eye`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eyeDescriptor = $convert.base64Decode(
    'CgNFeWUSLgoIa2V5UG9pbnQYASABKAsyEi5Ta3lsZS5UeXBlcy5Qb2ludFIIa2V5UG9pbnQSKA'
    'oEaXJpcxgCIAEoCzIULlNreWxlLlR5cGVzLkZlYXR1cmVSBGlyaXMSKgoFcHVwaWwYAyABKAsy'
    'FC5Ta3lsZS5UeXBlcy5GZWF0dXJlUgVwdXBpbBIrCgZnbGludHMYBCABKAsyEy5Ta3lsZS5UeX'
    'Blcy5HbGludHNSBmdsaW50cxIaCghkaXN0YW5jZRgFIAEoAVIIZGlzdGFuY2USOgoMYm91bmRp'
    'bmdSZWN0GAYgASgLMhYuU2t5bGUuVHlwZXMuUmVjdGFuZ2xlUgxib3VuZGluZ1JlY3Q=');

@$core.Deprecated('Use eyesDescriptor instead')
const Eyes$json = {
  '1': 'Eyes',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Eye', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Eye', '10': 'right'},
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
    {'1': 'boundingRect', '3': 1, '4': 1, '5': 11, '6': '.Skyle.Types.Rectangle', '10': 'boundingRect'},
    {'1': 'eyes', '3': 2, '4': 1, '5': 11, '6': '.Skyle.Types.Eyes', '10': 'eyes'},
  ],
};

/// Descriptor for `Face`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List faceDescriptor = $convert.base64Decode(
    'CgRGYWNlEjoKDGJvdW5kaW5nUmVjdBgBIAEoCzIWLlNreWxlLlR5cGVzLlJlY3RhbmdsZVIMYm'
    '91bmRpbmdSZWN0EiUKBGV5ZXMYAiABKAsyES5Ta3lsZS5UeXBlcy5FeWVzUgRleWVz');

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

