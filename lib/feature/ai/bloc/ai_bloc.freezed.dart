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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitAiEvent value)?  init,TResult Function( _ReadSupportedAIModelsAiEvent value)?  readSupportedAIModels,TResult Function( _SelectAiModelAiEvent value)?  selectAIModel,TResult Function( _GenerateSummaryAiEvent value)?  generateSummary,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init(_that);case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels(_that);case _SelectAiModelAiEvent() when selectAIModel != null:
return selectAIModel(_that);case _GenerateSummaryAiEvent() when generateSummary != null:
return generateSummary(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitAiEvent value)  init,required TResult Function( _ReadSupportedAIModelsAiEvent value)  readSupportedAIModels,required TResult Function( _SelectAiModelAiEvent value)  selectAIModel,required TResult Function( _GenerateSummaryAiEvent value)  generateSummary,}){
final _that = this;
switch (_that) {
case _InitAiEvent():
return init(_that);case _ReadSupportedAIModelsAiEvent():
return readSupportedAIModels(_that);case _SelectAiModelAiEvent():
return selectAIModel(_that);case _GenerateSummaryAiEvent():
return generateSummary(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitAiEvent value)?  init,TResult? Function( _ReadSupportedAIModelsAiEvent value)?  readSupportedAIModels,TResult? Function( _SelectAiModelAiEvent value)?  selectAIModel,TResult? Function( _GenerateSummaryAiEvent value)?  generateSummary,}){
final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init(_that);case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels(_that);case _SelectAiModelAiEvent() when selectAIModel != null:
return selectAIModel(_that);case _GenerateSummaryAiEvent() when generateSummary != null:
return generateSummary(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  readSupportedAIModels,TResult Function( AiModel selectedAIModels)?  selectAIModel,TResult Function( PlatformFile selectedFile)?  generateSummary,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init();case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels();case _SelectAiModelAiEvent() when selectAIModel != null:
return selectAIModel(_that.selectedAIModels);case _GenerateSummaryAiEvent() when generateSummary != null:
return generateSummary(_that.selectedFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  readSupportedAIModels,required TResult Function( AiModel selectedAIModels)  selectAIModel,required TResult Function( PlatformFile selectedFile)  generateSummary,}) {final _that = this;
switch (_that) {
case _InitAiEvent():
return init();case _ReadSupportedAIModelsAiEvent():
return readSupportedAIModels();case _SelectAiModelAiEvent():
return selectAIModel(_that.selectedAIModels);case _GenerateSummaryAiEvent():
return generateSummary(_that.selectedFile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  readSupportedAIModels,TResult? Function( AiModel selectedAIModels)?  selectAIModel,TResult? Function( PlatformFile selectedFile)?  generateSummary,}) {final _that = this;
switch (_that) {
case _InitAiEvent() when init != null:
return init();case _ReadSupportedAIModelsAiEvent() when readSupportedAIModels != null:
return readSupportedAIModels();case _SelectAiModelAiEvent() when selectAIModel != null:
return selectAIModel(_that.selectedAIModels);case _GenerateSummaryAiEvent() when generateSummary != null:
return generateSummary(_that.selectedFile);case _:
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


class _SelectAiModelAiEvent implements AiEvent {
  const _SelectAiModelAiEvent({required this.selectedAIModels});
  

 final  AiModel selectedAIModels;

/// Create a copy of AiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectAiModelAiEventCopyWith<_SelectAiModelAiEvent> get copyWith => __$SelectAiModelAiEventCopyWithImpl<_SelectAiModelAiEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectAiModelAiEvent&&(identical(other.selectedAIModels, selectedAIModels) || other.selectedAIModels == selectedAIModels));
}


@override
int get hashCode => Object.hash(runtimeType,selectedAIModels);

@override
String toString() {
  return 'AiEvent.selectAIModel(selectedAIModels: $selectedAIModels)';
}


}

/// @nodoc
abstract mixin class _$SelectAiModelAiEventCopyWith<$Res> implements $AiEventCopyWith<$Res> {
  factory _$SelectAiModelAiEventCopyWith(_SelectAiModelAiEvent value, $Res Function(_SelectAiModelAiEvent) _then) = __$SelectAiModelAiEventCopyWithImpl;
@useResult
$Res call({
 AiModel selectedAIModels
});


$AiModelCopyWith<$Res> get selectedAIModels;

}
/// @nodoc
class __$SelectAiModelAiEventCopyWithImpl<$Res>
    implements _$SelectAiModelAiEventCopyWith<$Res> {
  __$SelectAiModelAiEventCopyWithImpl(this._self, this._then);

  final _SelectAiModelAiEvent _self;
  final $Res Function(_SelectAiModelAiEvent) _then;

/// Create a copy of AiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedAIModels = null,}) {
  return _then(_SelectAiModelAiEvent(
selectedAIModels: null == selectedAIModels ? _self.selectedAIModels : selectedAIModels // ignore: cast_nullable_to_non_nullable
as AiModel,
  ));
}

/// Create a copy of AiEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res> get selectedAIModels {
  
  return $AiModelCopyWith<$Res>(_self.selectedAIModels, (value) {
    return _then(_self.copyWith(selectedAIModels: value));
  });
}
}

/// @nodoc


class _GenerateSummaryAiEvent implements AiEvent {
  const _GenerateSummaryAiEvent({required this.selectedFile});
  

 final  PlatformFile selectedFile;

/// Create a copy of AiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateSummaryAiEventCopyWith<_GenerateSummaryAiEvent> get copyWith => __$GenerateSummaryAiEventCopyWithImpl<_GenerateSummaryAiEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateSummaryAiEvent&&(identical(other.selectedFile, selectedFile) || other.selectedFile == selectedFile));
}


@override
int get hashCode => Object.hash(runtimeType,selectedFile);

@override
String toString() {
  return 'AiEvent.generateSummary(selectedFile: $selectedFile)';
}


}

/// @nodoc
abstract mixin class _$GenerateSummaryAiEventCopyWith<$Res> implements $AiEventCopyWith<$Res> {
  factory _$GenerateSummaryAiEventCopyWith(_GenerateSummaryAiEvent value, $Res Function(_GenerateSummaryAiEvent) _then) = __$GenerateSummaryAiEventCopyWithImpl;
@useResult
$Res call({
 PlatformFile selectedFile
});




}
/// @nodoc
class __$GenerateSummaryAiEventCopyWithImpl<$Res>
    implements _$GenerateSummaryAiEventCopyWith<$Res> {
  __$GenerateSummaryAiEventCopyWithImpl(this._self, this._then);

  final _GenerateSummaryAiEvent _self;
  final $Res Function(_GenerateSummaryAiEvent) _then;

/// Create a copy of AiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedFile = null,}) {
  return _then(_GenerateSummaryAiEvent(
selectedFile: null == selectedFile ? _self.selectedFile : selectedFile // ignore: cast_nullable_to_non_nullable
as PlatformFile,
  ));
}


}

/// @nodoc
mixin _$AiState {

 AiStatus get status; List<AiModel> get supportedAIModels; AiModel? get selectedAIModels; AiResponseModel get aiResponse; AppMex? get appMex;
/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiStateCopyWith<AiState> get copyWith => _$AiStateCopyWithImpl<AiState>(this as AiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.supportedAIModels, supportedAIModels)&&(identical(other.selectedAIModels, selectedAIModels) || other.selectedAIModels == selectedAIModels)&&(identical(other.aiResponse, aiResponse) || other.aiResponse == aiResponse)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(supportedAIModels),selectedAIModels,aiResponse,appMex);

@override
String toString() {
  return 'AiState(status: $status, supportedAIModels: $supportedAIModels, selectedAIModels: $selectedAIModels, aiResponse: $aiResponse, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class $AiStateCopyWith<$Res>  {
  factory $AiStateCopyWith(AiState value, $Res Function(AiState) _then) = _$AiStateCopyWithImpl;
@useResult
$Res call({
 AiStatus status, List<AiModel> supportedAIModels, AiModel? selectedAIModels, AiResponseModel aiResponse, AppMex? appMex
});


$AiModelCopyWith<$Res>? get selectedAIModels;$AiResponseModelCopyWith<$Res> get aiResponse;$AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class _$AiStateCopyWithImpl<$Res>
    implements $AiStateCopyWith<$Res> {
  _$AiStateCopyWithImpl(this._self, this._then);

  final AiState _self;
  final $Res Function(AiState) _then;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? supportedAIModels = null,Object? selectedAIModels = freezed,Object? aiResponse = null,Object? appMex = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AiStatus,supportedAIModels: null == supportedAIModels ? _self.supportedAIModels : supportedAIModels // ignore: cast_nullable_to_non_nullable
as List<AiModel>,selectedAIModels: freezed == selectedAIModels ? _self.selectedAIModels : selectedAIModels // ignore: cast_nullable_to_non_nullable
as AiModel?,aiResponse: null == aiResponse ? _self.aiResponse : aiResponse // ignore: cast_nullable_to_non_nullable
as AiResponseModel,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}
/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res>? get selectedAIModels {
    if (_self.selectedAIModels == null) {
    return null;
  }

  return $AiModelCopyWith<$Res>(_self.selectedAIModels!, (value) {
    return _then(_self.copyWith(selectedAIModels: value));
  });
}/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiResponseModelCopyWith<$Res> get aiResponse {
  
  return $AiResponseModelCopyWith<$Res>(_self.aiResponse, (value) {
    return _then(_self.copyWith(aiResponse: value));
  });
}/// Create a copy of AiState
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiStatus status,  List<AiModel> supportedAIModels,  AiModel? selectedAIModels,  AiResponseModel aiResponse,  AppMex? appMex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiState() when $default != null:
return $default(_that.status,_that.supportedAIModels,_that.selectedAIModels,_that.aiResponse,_that.appMex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiStatus status,  List<AiModel> supportedAIModels,  AiModel? selectedAIModels,  AiResponseModel aiResponse,  AppMex? appMex)  $default,) {final _that = this;
switch (_that) {
case _AiState():
return $default(_that.status,_that.supportedAIModels,_that.selectedAIModels,_that.aiResponse,_that.appMex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiStatus status,  List<AiModel> supportedAIModels,  AiModel? selectedAIModels,  AiResponseModel aiResponse,  AppMex? appMex)?  $default,) {final _that = this;
switch (_that) {
case _AiState() when $default != null:
return $default(_that.status,_that.supportedAIModels,_that.selectedAIModels,_that.aiResponse,_that.appMex);case _:
  return null;

}
}

}

/// @nodoc


class _AiState implements AiState {
  const _AiState({this.status = AiStatus.initial, final  List<AiModel> supportedAIModels = const [], this.selectedAIModels = null, this.aiResponse = const AiResponseModel(), this.appMex = null}): _supportedAIModels = supportedAIModels;
  

@override@JsonKey() final  AiStatus status;
 final  List<AiModel> _supportedAIModels;
@override@JsonKey() List<AiModel> get supportedAIModels {
  if (_supportedAIModels is EqualUnmodifiableListView) return _supportedAIModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportedAIModels);
}

@override@JsonKey() final  AiModel? selectedAIModels;
@override@JsonKey() final  AiResponseModel aiResponse;
@override@JsonKey() final  AppMex? appMex;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiStateCopyWith<_AiState> get copyWith => __$AiStateCopyWithImpl<_AiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._supportedAIModels, _supportedAIModels)&&(identical(other.selectedAIModels, selectedAIModels) || other.selectedAIModels == selectedAIModels)&&(identical(other.aiResponse, aiResponse) || other.aiResponse == aiResponse)&&(identical(other.appMex, appMex) || other.appMex == appMex));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_supportedAIModels),selectedAIModels,aiResponse,appMex);

@override
String toString() {
  return 'AiState(status: $status, supportedAIModels: $supportedAIModels, selectedAIModels: $selectedAIModels, aiResponse: $aiResponse, appMex: $appMex)';
}


}

/// @nodoc
abstract mixin class _$AiStateCopyWith<$Res> implements $AiStateCopyWith<$Res> {
  factory _$AiStateCopyWith(_AiState value, $Res Function(_AiState) _then) = __$AiStateCopyWithImpl;
@override @useResult
$Res call({
 AiStatus status, List<AiModel> supportedAIModels, AiModel? selectedAIModels, AiResponseModel aiResponse, AppMex? appMex
});


@override $AiModelCopyWith<$Res>? get selectedAIModels;@override $AiResponseModelCopyWith<$Res> get aiResponse;@override $AppMexCopyWith<$Res>? get appMex;

}
/// @nodoc
class __$AiStateCopyWithImpl<$Res>
    implements _$AiStateCopyWith<$Res> {
  __$AiStateCopyWithImpl(this._self, this._then);

  final _AiState _self;
  final $Res Function(_AiState) _then;

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? supportedAIModels = null,Object? selectedAIModels = freezed,Object? aiResponse = null,Object? appMex = freezed,}) {
  return _then(_AiState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AiStatus,supportedAIModels: null == supportedAIModels ? _self._supportedAIModels : supportedAIModels // ignore: cast_nullable_to_non_nullable
as List<AiModel>,selectedAIModels: freezed == selectedAIModels ? _self.selectedAIModels : selectedAIModels // ignore: cast_nullable_to_non_nullable
as AiModel?,aiResponse: null == aiResponse ? _self.aiResponse : aiResponse // ignore: cast_nullable_to_non_nullable
as AiResponseModel,appMex: freezed == appMex ? _self.appMex : appMex // ignore: cast_nullable_to_non_nullable
as AppMex?,
  ));
}

/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelCopyWith<$Res>? get selectedAIModels {
    if (_self.selectedAIModels == null) {
    return null;
  }

  return $AiModelCopyWith<$Res>(_self.selectedAIModels!, (value) {
    return _then(_self.copyWith(selectedAIModels: value));
  });
}/// Create a copy of AiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiResponseModelCopyWith<$Res> get aiResponse {
  
  return $AiResponseModelCopyWith<$Res>(_self.aiResponse, (value) {
    return _then(_self.copyWith(aiResponse: value));
  });
}/// Create a copy of AiState
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
