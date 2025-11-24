// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 bool get video; bool get enablePause; bool get pause; bool get guidance; bool get enableStandby; bool get disableMouse; Filter get filter; IPadOS get iPadOS; ScreenSizes get screenSizes; bool get hp; TrackingMode get trackingMode; bool get trackingDetails;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.video, video) || other.video == video)&&(identical(other.enablePause, enablePause) || other.enablePause == enablePause)&&(identical(other.pause, pause) || other.pause == pause)&&(identical(other.guidance, guidance) || other.guidance == guidance)&&(identical(other.enableStandby, enableStandby) || other.enableStandby == enableStandby)&&(identical(other.disableMouse, disableMouse) || other.disableMouse == disableMouse)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.iPadOS, iPadOS) || other.iPadOS == iPadOS)&&(identical(other.screenSizes, screenSizes) || other.screenSizes == screenSizes)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.trackingMode, trackingMode) || other.trackingMode == trackingMode)&&(identical(other.trackingDetails, trackingDetails) || other.trackingDetails == trackingDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,video,enablePause,pause,guidance,enableStandby,disableMouse,filter,iPadOS,screenSizes,hp,trackingMode,trackingDetails);

@override
String toString() {
  return 'Settings(video: $video, enablePause: $enablePause, pause: $pause, guidance: $guidance, enableStandby: $enableStandby, disableMouse: $disableMouse, filter: $filter, iPadOS: $iPadOS, screenSizes: $screenSizes, hp: $hp, trackingMode: $trackingMode, trackingDetails: $trackingDetails)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 bool video, bool enablePause, bool pause, bool guidance, bool enableStandby, bool disableMouse, Filter filter, IPadOS iPadOS, ScreenSizes screenSizes, bool hp, TrackingMode trackingMode, bool trackingDetails
});


$FilterCopyWith<$Res> get filter;$IPadOSCopyWith<$Res> get iPadOS;$ScreenSizesCopyWith<$Res> get screenSizes;

}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? video = null,Object? enablePause = null,Object? pause = null,Object? guidance = null,Object? enableStandby = null,Object? disableMouse = null,Object? filter = null,Object? iPadOS = null,Object? screenSizes = null,Object? hp = null,Object? trackingMode = null,Object? trackingDetails = null,}) {
  return _then(_self.copyWith(
video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,enablePause: null == enablePause ? _self.enablePause : enablePause // ignore: cast_nullable_to_non_nullable
as bool,pause: null == pause ? _self.pause : pause // ignore: cast_nullable_to_non_nullable
as bool,guidance: null == guidance ? _self.guidance : guidance // ignore: cast_nullable_to_non_nullable
as bool,enableStandby: null == enableStandby ? _self.enableStandby : enableStandby // ignore: cast_nullable_to_non_nullable
as bool,disableMouse: null == disableMouse ? _self.disableMouse : disableMouse // ignore: cast_nullable_to_non_nullable
as bool,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as Filter,iPadOS: null == iPadOS ? _self.iPadOS : iPadOS // ignore: cast_nullable_to_non_nullable
as IPadOS,screenSizes: null == screenSizes ? _self.screenSizes : screenSizes // ignore: cast_nullable_to_non_nullable
as ScreenSizes,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as bool,trackingMode: null == trackingMode ? _self.trackingMode : trackingMode // ignore: cast_nullable_to_non_nullable
as TrackingMode,trackingDetails: null == trackingDetails ? _self.trackingDetails : trackingDetails // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterCopyWith<$Res> get filter {
  
  return $FilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IPadOSCopyWith<$Res> get iPadOS {
  
  return $IPadOSCopyWith<$Res>(_self.iPadOS, (value) {
    return _then(_self.copyWith(iPadOS: value));
  });
}/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenSizesCopyWith<$Res> get screenSizes {
  
  return $ScreenSizesCopyWith<$Res>(_self.screenSizes, (value) {
    return _then(_self.copyWith(screenSizes: value));
  });
}
}


/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Settings value)  $default,){
final _that = this;
switch (_that) {
case _Settings():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool video,  bool enablePause,  bool pause,  bool guidance,  bool enableStandby,  bool disableMouse,  Filter filter,  IPadOS iPadOS,  ScreenSizes screenSizes,  bool hp,  TrackingMode trackingMode,  bool trackingDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.video,_that.enablePause,_that.pause,_that.guidance,_that.enableStandby,_that.disableMouse,_that.filter,_that.iPadOS,_that.screenSizes,_that.hp,_that.trackingMode,_that.trackingDetails);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool video,  bool enablePause,  bool pause,  bool guidance,  bool enableStandby,  bool disableMouse,  Filter filter,  IPadOS iPadOS,  ScreenSizes screenSizes,  bool hp,  TrackingMode trackingMode,  bool trackingDetails)  $default,) {final _that = this;
switch (_that) {
case _Settings():
return $default(_that.video,_that.enablePause,_that.pause,_that.guidance,_that.enableStandby,_that.disableMouse,_that.filter,_that.iPadOS,_that.screenSizes,_that.hp,_that.trackingMode,_that.trackingDetails);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool video,  bool enablePause,  bool pause,  bool guidance,  bool enableStandby,  bool disableMouse,  Filter filter,  IPadOS iPadOS,  ScreenSizes screenSizes,  bool hp,  TrackingMode trackingMode,  bool trackingDetails)?  $default,) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.video,_that.enablePause,_that.pause,_that.guidance,_that.enableStandby,_that.disableMouse,_that.filter,_that.iPadOS,_that.screenSizes,_that.hp,_that.trackingMode,_that.trackingDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
  const _Settings({this.video = false, this.enablePause = false, this.pause = false, this.guidance = false, this.enableStandby = false, this.disableMouse = false, this.filter = const Filter(), this.iPadOS = const IPadOS(), this.screenSizes = const ScreenSizes(), this.hp = false, this.trackingMode = TrackingMode.none, this.trackingDetails = false});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override@JsonKey() final  bool video;
@override@JsonKey() final  bool enablePause;
@override@JsonKey() final  bool pause;
@override@JsonKey() final  bool guidance;
@override@JsonKey() final  bool enableStandby;
@override@JsonKey() final  bool disableMouse;
@override@JsonKey() final  Filter filter;
@override@JsonKey() final  IPadOS iPadOS;
@override@JsonKey() final  ScreenSizes screenSizes;
@override@JsonKey() final  bool hp;
@override@JsonKey() final  TrackingMode trackingMode;
@override@JsonKey() final  bool trackingDetails;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.video, video) || other.video == video)&&(identical(other.enablePause, enablePause) || other.enablePause == enablePause)&&(identical(other.pause, pause) || other.pause == pause)&&(identical(other.guidance, guidance) || other.guidance == guidance)&&(identical(other.enableStandby, enableStandby) || other.enableStandby == enableStandby)&&(identical(other.disableMouse, disableMouse) || other.disableMouse == disableMouse)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.iPadOS, iPadOS) || other.iPadOS == iPadOS)&&(identical(other.screenSizes, screenSizes) || other.screenSizes == screenSizes)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.trackingMode, trackingMode) || other.trackingMode == trackingMode)&&(identical(other.trackingDetails, trackingDetails) || other.trackingDetails == trackingDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,video,enablePause,pause,guidance,enableStandby,disableMouse,filter,iPadOS,screenSizes,hp,trackingMode,trackingDetails);

@override
String toString() {
  return 'Settings(video: $video, enablePause: $enablePause, pause: $pause, guidance: $guidance, enableStandby: $enableStandby, disableMouse: $disableMouse, filter: $filter, iPadOS: $iPadOS, screenSizes: $screenSizes, hp: $hp, trackingMode: $trackingMode, trackingDetails: $trackingDetails)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 bool video, bool enablePause, bool pause, bool guidance, bool enableStandby, bool disableMouse, Filter filter, IPadOS iPadOS, ScreenSizes screenSizes, bool hp, TrackingMode trackingMode, bool trackingDetails
});


@override $FilterCopyWith<$Res> get filter;@override $IPadOSCopyWith<$Res> get iPadOS;@override $ScreenSizesCopyWith<$Res> get screenSizes;

}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? video = null,Object? enablePause = null,Object? pause = null,Object? guidance = null,Object? enableStandby = null,Object? disableMouse = null,Object? filter = null,Object? iPadOS = null,Object? screenSizes = null,Object? hp = null,Object? trackingMode = null,Object? trackingDetails = null,}) {
  return _then(_Settings(
video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,enablePause: null == enablePause ? _self.enablePause : enablePause // ignore: cast_nullable_to_non_nullable
as bool,pause: null == pause ? _self.pause : pause // ignore: cast_nullable_to_non_nullable
as bool,guidance: null == guidance ? _self.guidance : guidance // ignore: cast_nullable_to_non_nullable
as bool,enableStandby: null == enableStandby ? _self.enableStandby : enableStandby // ignore: cast_nullable_to_non_nullable
as bool,disableMouse: null == disableMouse ? _self.disableMouse : disableMouse // ignore: cast_nullable_to_non_nullable
as bool,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as Filter,iPadOS: null == iPadOS ? _self.iPadOS : iPadOS // ignore: cast_nullable_to_non_nullable
as IPadOS,screenSizes: null == screenSizes ? _self.screenSizes : screenSizes // ignore: cast_nullable_to_non_nullable
as ScreenSizes,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as bool,trackingMode: null == trackingMode ? _self.trackingMode : trackingMode // ignore: cast_nullable_to_non_nullable
as TrackingMode,trackingDetails: null == trackingDetails ? _self.trackingDetails : trackingDetails // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterCopyWith<$Res> get filter {
  
  return $FilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IPadOSCopyWith<$Res> get iPadOS {
  
  return $IPadOSCopyWith<$Res>(_self.iPadOS, (value) {
    return _then(_self.copyWith(iPadOS: value));
  });
}/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenSizesCopyWith<$Res> get screenSizes {
  
  return $ScreenSizesCopyWith<$Res>(_self.screenSizes, (value) {
    return _then(_self.copyWith(screenSizes: value));
  });
}
}

// dart format on
