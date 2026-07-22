// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secure_value_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SecureValueEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecureValueEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueEvent()';
}


}

/// @nodoc
class $SecureValueEventCopyWith<$Res>  {
$SecureValueEventCopyWith(SecureValueEvent _, $Res Function(SecureValueEvent) __);
}


/// Adds pattern-matching-related methods to [SecureValueEvent].
extension SecureValueEventPatterns on SecureValueEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitSecureValueEvent value)?  init,TResult Function( _SaveAPIKeySecureValueEvent value)?  saveAPIKey,TResult Function( _ReadAPIKeySecureValueEvent value)?  readAPIKey,TResult Function( _DeleteAPIKeySecureValueEvent value)?  deleteAPIKey,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitSecureValueEvent() when init != null:
return init(_that);case _SaveAPIKeySecureValueEvent() when saveAPIKey != null:
return saveAPIKey(_that);case _ReadAPIKeySecureValueEvent() when readAPIKey != null:
return readAPIKey(_that);case _DeleteAPIKeySecureValueEvent() when deleteAPIKey != null:
return deleteAPIKey(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitSecureValueEvent value)  init,required TResult Function( _SaveAPIKeySecureValueEvent value)  saveAPIKey,required TResult Function( _ReadAPIKeySecureValueEvent value)  readAPIKey,required TResult Function( _DeleteAPIKeySecureValueEvent value)  deleteAPIKey,}){
final _that = this;
switch (_that) {
case _InitSecureValueEvent():
return init(_that);case _SaveAPIKeySecureValueEvent():
return saveAPIKey(_that);case _ReadAPIKeySecureValueEvent():
return readAPIKey(_that);case _DeleteAPIKeySecureValueEvent():
return deleteAPIKey(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitSecureValueEvent value)?  init,TResult? Function( _SaveAPIKeySecureValueEvent value)?  saveAPIKey,TResult? Function( _ReadAPIKeySecureValueEvent value)?  readAPIKey,TResult? Function( _DeleteAPIKeySecureValueEvent value)?  deleteAPIKey,}){
final _that = this;
switch (_that) {
case _InitSecureValueEvent() when init != null:
return init(_that);case _SaveAPIKeySecureValueEvent() when saveAPIKey != null:
return saveAPIKey(_that);case _ReadAPIKeySecureValueEvent() when readAPIKey != null:
return readAPIKey(_that);case _DeleteAPIKeySecureValueEvent() when deleteAPIKey != null:
return deleteAPIKey(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( AiModel aiModel,  String apiKey)?  saveAPIKey,TResult Function( AiModel aiModel)?  readAPIKey,TResult Function( AiModel aiModel)?  deleteAPIKey,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitSecureValueEvent() when init != null:
return init();case _SaveAPIKeySecureValueEvent() when saveAPIKey != null:
return saveAPIKey(_that.aiModel,_that.apiKey);case _ReadAPIKeySecureValueEvent() when readAPIKey != null:
return readAPIKey(_that.aiModel);case _DeleteAPIKeySecureValueEvent() when deleteAPIKey != null:
return deleteAPIKey(_that.aiModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( AiModel aiModel,  String apiKey)  saveAPIKey,required TResult Function( AiModel aiModel)  readAPIKey,required TResult Function( AiModel aiModel)  deleteAPIKey,}) {final _that = this;
switch (_that) {
case _InitSecureValueEvent():
return init();case _SaveAPIKeySecureValueEvent():
return saveAPIKey(_that.aiModel,_that.apiKey);case _ReadAPIKeySecureValueEvent():
return readAPIKey(_that.aiModel);case _DeleteAPIKeySecureValueEvent():
return deleteAPIKey(_that.aiModel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( AiModel aiModel,  String apiKey)?  saveAPIKey,TResult? Function( AiModel aiModel)?  readAPIKey,TResult? Function( AiModel aiModel)?  deleteAPIKey,}) {final _that = this;
switch (_that) {
case _InitSecureValueEvent() when init != null:
return init();case _SaveAPIKeySecureValueEvent() when saveAPIKey != null:
return saveAPIKey(_that.aiModel,_that.apiKey);case _ReadAPIKeySecureValueEvent() when readAPIKey != null:
return readAPIKey(_that.aiModel);case _DeleteAPIKeySecureValueEvent() when deleteAPIKey != null:
return deleteAPIKey(_that.aiModel);case _:
  return null;

}
}

}

/// @nodoc


class _InitSecureValueEvent implements SecureValueEvent {
  const _InitSecureValueEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitSecureValueEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueEvent.init()';
}


}




/// @nodoc


class _SaveAPIKeySecureValueEvent implements SecureValueEvent {
  const _SaveAPIKeySecureValueEvent({required this.aiModel, required this.apiKey});
  

 final  AiModel aiModel;
 final  String apiKey;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveAPIKeySecureValueEventCopyWith<_SaveAPIKeySecureValueEvent> get copyWith => __$SaveAPIKeySecureValueEventCopyWithImpl<_SaveAPIKeySecureValueEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveAPIKeySecureValueEvent&&(identical(other.aiModel, aiModel) || other.aiModel == aiModel)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey));
}


@override
int get hashCode => Object.hash(runtimeType,aiModel,apiKey);

@override
String toString() {
  return 'SecureValueEvent.saveAPIKey(aiModel: $aiModel, apiKey: $apiKey)';
}


}

/// @nodoc
abstract mixin class _$SaveAPIKeySecureValueEventCopyWith<$Res> implements $SecureValueEventCopyWith<$Res> {
  factory _$SaveAPIKeySecureValueEventCopyWith(_SaveAPIKeySecureValueEvent value, $Res Function(_SaveAPIKeySecureValueEvent) _then) = __$SaveAPIKeySecureValueEventCopyWithImpl;
@useResult
$Res call({
 AiModel aiModel, String apiKey
});


$AiModelCopyWith<$Res> get aiModel;

}
/// @nodoc
class __$SaveAPIKeySecureValueEventCopyWithImpl<$Res>
    implements _$SaveAPIKeySecureValueEventCopyWith<$Res> {
  __$SaveAPIKeySecureValueEventCopyWithImpl(this._self, this._then);

  final _SaveAPIKeySecureValueEvent _self;
  final $Res Function(_SaveAPIKeySecureValueEvent) _then;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? aiModel = null,Object? apiKey = null,}) {
  return _then(_SaveAPIKeySecureValueEvent(
aiModel: null == aiModel ? _self.aiModel : aiModel // ignore: cast_nullable_to_non_nullable
as AiModel,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res> get aiModel {
  
  return $AiModelCopyWith<$Res>(_self.aiModel, (value) {
    return _then(_self.copyWith(aiModel: value));
  });
}
}

/// @nodoc


class _ReadAPIKeySecureValueEvent implements SecureValueEvent {
  const _ReadAPIKeySecureValueEvent({required this.aiModel});
  

 final  AiModel aiModel;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadAPIKeySecureValueEventCopyWith<_ReadAPIKeySecureValueEvent> get copyWith => __$ReadAPIKeySecureValueEventCopyWithImpl<_ReadAPIKeySecureValueEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadAPIKeySecureValueEvent&&(identical(other.aiModel, aiModel) || other.aiModel == aiModel));
}


@override
int get hashCode => Object.hash(runtimeType,aiModel);

@override
String toString() {
  return 'SecureValueEvent.readAPIKey(aiModel: $aiModel)';
}


}

/// @nodoc
abstract mixin class _$ReadAPIKeySecureValueEventCopyWith<$Res> implements $SecureValueEventCopyWith<$Res> {
  factory _$ReadAPIKeySecureValueEventCopyWith(_ReadAPIKeySecureValueEvent value, $Res Function(_ReadAPIKeySecureValueEvent) _then) = __$ReadAPIKeySecureValueEventCopyWithImpl;
@useResult
$Res call({
 AiModel aiModel
});


$AiModelCopyWith<$Res> get aiModel;

}
/// @nodoc
class __$ReadAPIKeySecureValueEventCopyWithImpl<$Res>
    implements _$ReadAPIKeySecureValueEventCopyWith<$Res> {
  __$ReadAPIKeySecureValueEventCopyWithImpl(this._self, this._then);

  final _ReadAPIKeySecureValueEvent _self;
  final $Res Function(_ReadAPIKeySecureValueEvent) _then;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? aiModel = null,}) {
  return _then(_ReadAPIKeySecureValueEvent(
aiModel: null == aiModel ? _self.aiModel : aiModel // ignore: cast_nullable_to_non_nullable
as AiModel,
  ));
}

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res> get aiModel {
  
  return $AiModelCopyWith<$Res>(_self.aiModel, (value) {
    return _then(_self.copyWith(aiModel: value));
  });
}
}

/// @nodoc


class _DeleteAPIKeySecureValueEvent implements SecureValueEvent {
  const _DeleteAPIKeySecureValueEvent({required this.aiModel});
  

 final  AiModel aiModel;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAPIKeySecureValueEventCopyWith<_DeleteAPIKeySecureValueEvent> get copyWith => __$DeleteAPIKeySecureValueEventCopyWithImpl<_DeleteAPIKeySecureValueEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAPIKeySecureValueEvent&&(identical(other.aiModel, aiModel) || other.aiModel == aiModel));
}


@override
int get hashCode => Object.hash(runtimeType,aiModel);

@override
String toString() {
  return 'SecureValueEvent.deleteAPIKey(aiModel: $aiModel)';
}


}

/// @nodoc
abstract mixin class _$DeleteAPIKeySecureValueEventCopyWith<$Res> implements $SecureValueEventCopyWith<$Res> {
  factory _$DeleteAPIKeySecureValueEventCopyWith(_DeleteAPIKeySecureValueEvent value, $Res Function(_DeleteAPIKeySecureValueEvent) _then) = __$DeleteAPIKeySecureValueEventCopyWithImpl;
@useResult
$Res call({
 AiModel aiModel
});


$AiModelCopyWith<$Res> get aiModel;

}
/// @nodoc
class __$DeleteAPIKeySecureValueEventCopyWithImpl<$Res>
    implements _$DeleteAPIKeySecureValueEventCopyWith<$Res> {
  __$DeleteAPIKeySecureValueEventCopyWithImpl(this._self, this._then);

  final _DeleteAPIKeySecureValueEvent _self;
  final $Res Function(_DeleteAPIKeySecureValueEvent) _then;

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? aiModel = null,}) {
  return _then(_DeleteAPIKeySecureValueEvent(
aiModel: null == aiModel ? _self.aiModel : aiModel // ignore: cast_nullable_to_non_nullable
as AiModel,
  ));
}

/// Create a copy of SecureValueEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res> get aiModel {
  
  return $AiModelCopyWith<$Res>(_self.aiModel, (value) {
    return _then(_self.copyWith(aiModel: value));
  });
}
}

/// @nodoc
mixin _$SecureValueState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecureValueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueState()';
}


}

/// @nodoc
class $SecureValueStateCopyWith<$Res>  {
$SecureValueStateCopyWith(SecureValueState _, $Res Function(SecureValueState) __);
}


/// Adds pattern-matching-related methods to [SecureValueState].
extension SecureValueStatePatterns on SecureValueState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialSecureValueState value)?  init,TResult Function( LoadingSecureValueState value)?  loading,TResult Function( SuccessSecureValueState value)?  success,TResult Function( ErrorSecureValueState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialSecureValueState() when init != null:
return init(_that);case LoadingSecureValueState() when loading != null:
return loading(_that);case SuccessSecureValueState() when success != null:
return success(_that);case ErrorSecureValueState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialSecureValueState value)  init,required TResult Function( LoadingSecureValueState value)  loading,required TResult Function( SuccessSecureValueState value)  success,required TResult Function( ErrorSecureValueState value)  error,}){
final _that = this;
switch (_that) {
case InitialSecureValueState():
return init(_that);case LoadingSecureValueState():
return loading(_that);case SuccessSecureValueState():
return success(_that);case ErrorSecureValueState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialSecureValueState value)?  init,TResult? Function( LoadingSecureValueState value)?  loading,TResult? Function( SuccessSecureValueState value)?  success,TResult? Function( ErrorSecureValueState value)?  error,}){
final _that = this;
switch (_that) {
case InitialSecureValueState() when init != null:
return init(_that);case LoadingSecureValueState() when loading != null:
return loading(_that);case SuccessSecureValueState() when success != null:
return success(_that);case ErrorSecureValueState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loading,TResult Function()?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialSecureValueState() when init != null:
return init();case LoadingSecureValueState() when loading != null:
return loading();case SuccessSecureValueState() when success != null:
return success();case ErrorSecureValueState() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loading,required TResult Function()  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case InitialSecureValueState():
return init();case LoadingSecureValueState():
return loading();case SuccessSecureValueState():
return success();case ErrorSecureValueState():
return error();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case InitialSecureValueState() when init != null:
return init();case LoadingSecureValueState() when loading != null:
return loading();case SuccessSecureValueState() when success != null:
return success();case ErrorSecureValueState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class InitialSecureValueState implements SecureValueState {
  const InitialSecureValueState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialSecureValueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueState.init()';
}


}




/// @nodoc


class LoadingSecureValueState implements SecureValueState {
  const LoadingSecureValueState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSecureValueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueState.loading()';
}


}




/// @nodoc


class SuccessSecureValueState implements SecureValueState {
  const SuccessSecureValueState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSecureValueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueState.success()';
}


}




/// @nodoc


class ErrorSecureValueState implements SecureValueState {
  const ErrorSecureValueState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSecureValueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureValueState.error()';
}


}




// dart format on
