// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectFileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectFileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectFileEvent()';
}


}

/// @nodoc
class $SelectFileEventCopyWith<$Res>  {
$SelectFileEventCopyWith(SelectFileEvent _, $Res Function(SelectFileEvent) __);
}


/// Adds pattern-matching-related methods to [SelectFileEvent].
extension SelectFileEventPatterns on SelectFileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitSelectFileEvent value)?  init,TResult Function( _SelectFileEvent value)?  selectFile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitSelectFileEvent() when init != null:
return init(_that);case _SelectFileEvent() when selectFile != null:
return selectFile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitSelectFileEvent value)  init,required TResult Function( _SelectFileEvent value)  selectFile,}){
final _that = this;
switch (_that) {
case _InitSelectFileEvent():
return init(_that);case _SelectFileEvent():
return selectFile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitSelectFileEvent value)?  init,TResult? Function( _SelectFileEvent value)?  selectFile,}){
final _that = this;
switch (_that) {
case _InitSelectFileEvent() when init != null:
return init(_that);case _SelectFileEvent() when selectFile != null:
return selectFile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( SelectFileSource source)?  selectFile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitSelectFileEvent() when init != null:
return init();case _SelectFileEvent() when selectFile != null:
return selectFile(_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( SelectFileSource source)  selectFile,}) {final _that = this;
switch (_that) {
case _InitSelectFileEvent():
return init();case _SelectFileEvent():
return selectFile(_that.source);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( SelectFileSource source)?  selectFile,}) {final _that = this;
switch (_that) {
case _InitSelectFileEvent() when init != null:
return init();case _SelectFileEvent() when selectFile != null:
return selectFile(_that.source);case _:
  return null;

}
}

}

/// @nodoc


class _InitSelectFileEvent implements SelectFileEvent {
  const _InitSelectFileEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitSelectFileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectFileEvent.init()';
}


}




/// @nodoc


class _SelectFileEvent implements SelectFileEvent {
  const _SelectFileEvent({required this.source});
  

 final  SelectFileSource source;

/// Create a copy of SelectFileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectFileEventCopyWith<_SelectFileEvent> get copyWith => __$SelectFileEventCopyWithImpl<_SelectFileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectFileEvent&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'SelectFileEvent.selectFile(source: $source)';
}


}

/// @nodoc
abstract mixin class _$SelectFileEventCopyWith<$Res> implements $SelectFileEventCopyWith<$Res> {
  factory _$SelectFileEventCopyWith(_SelectFileEvent value, $Res Function(_SelectFileEvent) _then) = __$SelectFileEventCopyWithImpl;
@useResult
$Res call({
 SelectFileSource source
});




}
/// @nodoc
class __$SelectFileEventCopyWithImpl<$Res>
    implements _$SelectFileEventCopyWith<$Res> {
  __$SelectFileEventCopyWithImpl(this._self, this._then);

  final _SelectFileEvent _self;
  final $Res Function(_SelectFileEvent) _then;

/// Create a copy of SelectFileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? source = null,}) {
  return _then(_SelectFileEvent(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SelectFileSource,
  ));
}


}

/// @nodoc
mixin _$SelectFileState {

 SelectFileStatus get status; PlatformFile? get selectedFile; AppMex? get appMex;
/// Create a copy of SelectFileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectFileStateCopyWith<SelectFileState> get copyWith => _$SelectFileStateCopyWithImpl<SelectFileState>(this as SelectFileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectFileState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedFile, selectedFile) || other.selectedFile == selectedFile)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedFile,appMex);

@override
String toString() {
  return 'SelectFileState(status: $status, selectedFile: $selectedFile, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class $SelectFileStateCopyWith<$Res>  {
  factory $SelectFileStateCopyWith(SelectFileState value, $Res Function(SelectFileState) _then) = _$SelectFileStateCopyWithImpl;
@useResult
$Res call({
 SelectFileStatus status, PlatformFile? selectedFile, AppMex? appMex
});


$AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class _$SelectFileStateCopyWithImpl<$Res>
    implements $SelectFileStateCopyWith<$Res> {
  _$SelectFileStateCopyWithImpl(this._self, this._then);

  final SelectFileState _self;
  final $Res Function(SelectFileState) _then;

/// Create a copy of SelectFileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? selectedFile = freezed,Object? appMex = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SelectFileStatus,selectedFile: freezed == selectedFile ? _self.selectedFile : selectedFile // ignore: cast_nullable_to_non_nullable
as PlatformFile?,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}
/// Create a copy of SelectFileState
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


/// Adds pattern-matching-related methods to [SelectFileState].
extension SelectFileStatePatterns on SelectFileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectFileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectFileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectFileState value)  $default,){
final _that = this;
switch (_that) {
case _SelectFileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectFileState value)?  $default,){
final _that = this;
switch (_that) {
case _SelectFileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SelectFileStatus status,  PlatformFile? selectedFile,  AppMex? appMex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectFileState() when $default != null:
return $default(_that.status,_that.selectedFile,_that.appMex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SelectFileStatus status,  PlatformFile? selectedFile,  AppMex? appMex)  $default,) {final _that = this;
switch (_that) {
case _SelectFileState():
return $default(_that.status,_that.selectedFile,_that.appMex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SelectFileStatus status,  PlatformFile? selectedFile,  AppMex? appMex)?  $default,) {final _that = this;
switch (_that) {
case _SelectFileState() when $default != null:
return $default(_that.status,_that.selectedFile,_that.appMex);case _:
  return null;

}
}

}

/// @nodoc


class _SelectFileState implements SelectFileState {
  const _SelectFileState({this.status = SelectFileStatus.initial, this.selectedFile = null, this.appMex = null});
  

@override@JsonKey() final  SelectFileStatus status;
@override@JsonKey() final  PlatformFile? selectedFile;
@override@JsonKey() final  AppMex? appMex;

/// Create a copy of SelectFileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectFileStateCopyWith<_SelectFileState> get copyWith => __$SelectFileStateCopyWithImpl<_SelectFileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectFileState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedFile, selectedFile) || other.selectedFile == selectedFile)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedFile,appMex);

@override
String toString() {
  return 'SelectFileState(status: $status, selectedFile: $selectedFile, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class _$SelectFileStateCopyWith<$Res> implements $SelectFileStateCopyWith<$Res> {
  factory _$SelectFileStateCopyWith(_SelectFileState value, $Res Function(_SelectFileState) _then) = __$SelectFileStateCopyWithImpl;
@override @useResult
$Res call({
 SelectFileStatus status, PlatformFile? selectedFile, AppMex? appMex
});


@override $AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class __$SelectFileStateCopyWithImpl<$Res>
    implements _$SelectFileStateCopyWith<$Res> {
  __$SelectFileStateCopyWithImpl(this._self, this._then);

  final _SelectFileState _self;
  final $Res Function(_SelectFileState) _then;

/// Create a copy of SelectFileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? selectedFile = freezed,Object? appMex = freezed,}) {
  return _then(_SelectFileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SelectFileStatus,selectedFile: freezed == selectedFile ? _self.selectedFile : selectedFile // ignore: cast_nullable_to_non_nullable
as PlatformFile?,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}

/// Create a copy of SelectFileState
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
