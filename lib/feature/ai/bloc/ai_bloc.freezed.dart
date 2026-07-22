// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AiEvent()';
}


}

/// @nodoc
class $AiEventCopyWith<$Res>  {
$AiEventCopyWith(AiEvent _, $Res Function(AiEvent) __);
}


/// Adds pattern-matching-related methods to [AiEvent].
extension AiEventPatterns on AiEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitAiEvent value)?  init,TResult Function( _ReadSupportedAIModelsAiEvent value)?  readSupportedAIModels,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init(_that);case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitAiEvent value)  init,required TResult Function( _ReadSupportedAIModelsAiEvent value)  readSupportedAIModels,}){
final _that = this;
switch (_that) {
case _InitAiEvent():
return init(_that);case _ReadSupportedAIModelsAiEvent():
return readSupportedAIModels(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitAiEvent value)?  init,TResult? Function( _ReadSupportedAIModelsAiEvent value)?  readSupportedAIModels,}){
final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init(_that);case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  readSupportedAIModels,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init();case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  readSupportedAIModels,}) {final _that = this;
switch (_that) {
case _InitAiEvent():
return init();case _ReadSupportedAIModelsAiEvent():
return readSupportedAIModels();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  readSupportedAIModels,}) {final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init();case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels();case _:
  return null;

}
}

}

/// @nodoc


class _InitAiEvent implements AiEvent {
  const _InitAiEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitAiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AiEvent.init()';
}


}




/// @nodoc


class _ReadSupportedAIModelsAiEvent implements AiEvent {
  const _ReadSupportedAIModelsAiEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadSupportedAIModelsAiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AiEvent.readSupportedAIModels()';
}


}




/// @nodoc
mixin _$AiState {

 AiStatus get status; List<AiModel> get supportedAIModels; AppMex? get appMex;
/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiStateCopyWith<AiState> get copyWith => _$AiStateCopyWithImpl<AiState>(this as AiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.supportedAIModels, supportedAIModels)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(supportedAIModels),appMex);

@override
String toString() {
  return 'AiState(status: $status, supportedAIModels: $supportedAIModels, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class $AiStateCopyWith<$Res>  {
  factory $AiStateCopyWith(AiState value, $Res Function(AiState) _then) = _$AiStateCopyWithImpl;
@useResult
$Res call({
 AiStatus status, List<AiModel> supportedAIModels, AppMex? appMex
});


$AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class _$AiStateCopyWithImpl<$Res>
    implements $AiStateCopyWith<$Res> {
  _$AiStateCopyWithImpl(this._self, this._then);

  final AiState _self;
  final $Res Function(AiState) _then;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? supportedAIModels = null,Object? appMex = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AiStatus,supportedAIModels: null == supportedAIModels ? _self.supportedAIModels : supportedAIModels // ignore: cast_nullable_to_non_nullable
as List<AiModel>,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}
/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppMexCopyWith<$Res>? get appMex {
    if (_self.appMex == null) {
    return null;
  }

  return $AppMexCopyWith<$Res>(_self.appMex!, (value) {
    return _then(_self.copyWith(appMex: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiState].
extension AiStatePatterns on AiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiState value)  $default,){
final _that = this;
switch (_that) {
case _AiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiState value)?  $default,){
final _that = this;
switch (_that) {
case _AiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiStatus status,  List<AiModel> supportedAIModels,  AppMex? appMex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiState() when $default != null:
return $default(_that.status,_that.supportedAIModels,_that.appMex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiStatus status,  List<AiModel> supportedAIModels,  AppMex? appMex)  $default,) {final _that = this;
switch (_that) {
case _AiState():
return $default(_that.status,_that.supportedAIModels,_that.appMex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiStatus status,  List<AiModel> supportedAIModels,  AppMex? appMex)?  $default,) {final _that = this;
switch (_that) {
case _AiState() when $default != null:
return $default(_that.status,_that.supportedAIModels,_that.appMex);case _:
  return null;

}
}

}

/// @nodoc


class _AiState implements AiState {
  const _AiState({this.status = AiStatus.initial, final  List<AiModel> supportedAIModels = const [], this.appMex = null}): _supportedAIModels = supportedAIModels;
  

@override@JsonKey() final  AiStatus status;
 final  List<AiModel> _supportedAIModels;
@override@JsonKey() List<AiModel> get supportedAIModels {
  if (_supportedAIModels is EqualUnmodifiableListView) return _supportedAIModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportedAIModels);
}

@override@JsonKey() final  AppMex? appMex;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiStateCopyWith<_AiState> get copyWith => __$AiStateCopyWithImpl<_AiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._supportedAIModels, _supportedAIModels)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_supportedAIModels),appMex);

@override
String toString() {
  return 'AiState(status: $status, supportedAIModels: $supportedAIModels, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class _$AiStateCopyWith<$Res> implements $AiStateCopyWith<$Res> {
  factory _$AiStateCopyWith(_AiState value, $Res Function(_AiState) _then) = __$AiStateCopyWithImpl;
@override @useResult
$Res call({
 AiStatus status, List<AiModel> supportedAIModels, AppMex? appMex
});


@override $AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class __$AiStateCopyWithImpl<$Res>
    implements _$AiStateCopyWith<$Res> {
  __$AiStateCopyWithImpl(this._self, this._then);

  final _AiState _self;
  final $Res Function(_AiState) _then;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? supportedAIModels = null,Object? appMex = freezed,}) {
  return _then(_AiState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AiStatus,supportedAIModels: null == supportedAIModels ? _self._supportedAIModels : supportedAIModels // ignore: cast_nullable_to_non_nullable
as List<AiModel>,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppMexCopyWith<$Res>? get appMex {
    if (_self.appMex == null) {
    return null;
  }

  return $AppMexCopyWith<$Res>(_self.appMex!, (value) {
    return _then(_self.copyWith(appMex: value));
  });
}
}

// dart format on
