// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeminiResponseModel {

 String get id; String get status; Usage get usage; String get created; String get updated;@JsonKey(name: 'service_tier') String get serviceTier; List<Step> get steps; String get object; String get model;
/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiResponseModelCopyWith<GeminiResponseModel> get copyWith => _$GeminiResponseModelCopyWithImpl<GeminiResponseModel>(this as GeminiResponseModel, _$identity);

  /// Serializes this GeminiResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier)&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.object, object) || other.object == object)&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,usage,created,updated,serviceTier,const DeepCollectionEquality().hash(steps),object,model);

@override
String toString() {
  return 'GeminiResponseModel(id: $id, status: $status, usage: $usage, created: $created, updated: $updated, serviceTier: $serviceTier, steps: $steps, object: $object, model: $model)';
}


}

/// @nodoc
abstract mixin class $GeminiResponseModelCopyWith<$Res>  {
  factory $GeminiResponseModelCopyWith(GeminiResponseModel value, $Res Function(GeminiResponseModel) _then) = _$GeminiResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, String status, Usage usage, String created, String updated,@JsonKey(name: 'service_tier') String serviceTier, List<Step> steps, String object, String model
});


$UsageCopyWith<$Res> get usage;

}
/// @nodoc
class _$GeminiResponseModelCopyWithImpl<$Res>
    implements $GeminiResponseModelCopyWith<$Res> {
  _$GeminiResponseModelCopyWithImpl(this._self, this._then);

  final GeminiResponseModel _self;
  final $Res Function(GeminiResponseModel) _then;

/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? usage = null,Object? created = null,Object? updated = null,Object? serviceTier = null,Object? steps = null,Object? object = null,Object? model = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,serviceTier: null == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<Step>,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res> get usage {
  
  return $UsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeminiResponseModel].
extension GeminiResponseModelPatterns on GeminiResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GeminiResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  Usage usage,  String created,  String updated, @JsonKey(name: 'service_tier')  String serviceTier,  List<Step> steps,  String object,  String model)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiResponseModel() when $default != null:
return $default(_that.id,_that.status,_that.usage,_that.created,_that.updated,_that.serviceTier,_that.steps,_that.object,_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  Usage usage,  String created,  String updated, @JsonKey(name: 'service_tier')  String serviceTier,  List<Step> steps,  String object,  String model)  $default,) {final _that = this;
switch (_that) {
case _GeminiResponseModel():
return $default(_that.id,_that.status,_that.usage,_that.created,_that.updated,_that.serviceTier,_that.steps,_that.object,_that.model);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  Usage usage,  String created,  String updated, @JsonKey(name: 'service_tier')  String serviceTier,  List<Step> steps,  String object,  String model)?  $default,) {final _that = this;
switch (_that) {
case _GeminiResponseModel() when $default != null:
return $default(_that.id,_that.status,_that.usage,_that.created,_that.updated,_that.serviceTier,_that.steps,_that.object,_that.model);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiResponseModel implements GeminiResponseModel {
  const _GeminiResponseModel({required this.id, required this.status, required this.usage, required this.created, required this.updated, @JsonKey(name: 'service_tier') required this.serviceTier, required final  List<Step> steps, required this.object, required this.model}): _steps = steps;
  factory _GeminiResponseModel.fromJson(Map<String, dynamic> json) => _$GeminiResponseModelFromJson(json);

@override final  String id;
@override final  String status;
@override final  Usage usage;
@override final  String created;
@override final  String updated;
@override@JsonKey(name: 'service_tier') final  String serviceTier;
 final  List<Step> _steps;
@override List<Step> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override final  String object;
@override final  String model;

/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiResponseModelCopyWith<_GeminiResponseModel> get copyWith => __$GeminiResponseModelCopyWithImpl<_GeminiResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier)&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.object, object) || other.object == object)&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,usage,created,updated,serviceTier,const DeepCollectionEquality().hash(_steps),object,model);

@override
String toString() {
  return 'GeminiResponseModel(id: $id, status: $status, usage: $usage, created: $created, updated: $updated, serviceTier: $serviceTier, steps: $steps, object: $object, model: $model)';
}


}

/// @nodoc
abstract mixin class _$GeminiResponseModelCopyWith<$Res> implements $GeminiResponseModelCopyWith<$Res> {
  factory _$GeminiResponseModelCopyWith(_GeminiResponseModel value, $Res Function(_GeminiResponseModel) _then) = __$GeminiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, Usage usage, String created, String updated,@JsonKey(name: 'service_tier') String serviceTier, List<Step> steps, String object, String model
});


@override $UsageCopyWith<$Res> get usage;

}
/// @nodoc
class __$GeminiResponseModelCopyWithImpl<$Res>
    implements _$GeminiResponseModelCopyWith<$Res> {
  __$GeminiResponseModelCopyWithImpl(this._self, this._then);

  final _GeminiResponseModel _self;
  final $Res Function(_GeminiResponseModel) _then;

/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? usage = null,Object? created = null,Object? updated = null,Object? serviceTier = null,Object? steps = null,Object? object = null,Object? model = null,}) {
  return _then(_GeminiResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,serviceTier: null == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<Step>,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GeminiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res> get usage {
  
  return $UsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
mixin _$Usage {

@JsonKey(name: 'total_tokens') int get totalTokens;@JsonKey(name: 'total_input_tokens') int get totalInputTokens;@JsonKey(name: 'input_tokens_by_modality') List<InputTokensByModality> get inputTokensByModality;@JsonKey(name: 'total_cached_tokens') int get totalCachedTokens;@JsonKey(name: 'total_output_tokens') int get totalOutputTokens;@JsonKey(name: 'total_tool_use_tokens') int get totalToolUseTokens;@JsonKey(name: 'total_thought_tokens') int get totalThoughtTokens;
/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageCopyWith<Usage> get copyWith => _$UsageCopyWithImpl<Usage>(this as Usage, _$identity);

  /// Serializes this Usage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usage&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.totalInputTokens, totalInputTokens) || other.totalInputTokens == totalInputTokens)&&const DeepCollectionEquality().equals(other.inputTokensByModality, inputTokensByModality)&&(identical(other.totalCachedTokens, totalCachedTokens) || other.totalCachedTokens == totalCachedTokens)&&(identical(other.totalOutputTokens, totalOutputTokens) || other.totalOutputTokens == totalOutputTokens)&&(identical(other.totalToolUseTokens, totalToolUseTokens) || other.totalToolUseTokens == totalToolUseTokens)&&(identical(other.totalThoughtTokens, totalThoughtTokens) || other.totalThoughtTokens == totalThoughtTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalTokens,totalInputTokens,const DeepCollectionEquality().hash(inputTokensByModality),totalCachedTokens,totalOutputTokens,totalToolUseTokens,totalThoughtTokens);

@override
String toString() {
  return 'Usage(totalTokens: $totalTokens, totalInputTokens: $totalInputTokens, inputTokensByModality: $inputTokensByModality, totalCachedTokens: $totalCachedTokens, totalOutputTokens: $totalOutputTokens, totalToolUseTokens: $totalToolUseTokens, totalThoughtTokens: $totalThoughtTokens)';
}


}

/// @nodoc
abstract mixin class $UsageCopyWith<$Res>  {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) _then) = _$UsageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'total_input_tokens') int totalInputTokens,@JsonKey(name: 'input_tokens_by_modality') List<InputTokensByModality> inputTokensByModality,@JsonKey(name: 'total_cached_tokens') int totalCachedTokens,@JsonKey(name: 'total_output_tokens') int totalOutputTokens,@JsonKey(name: 'total_tool_use_tokens') int totalToolUseTokens,@JsonKey(name: 'total_thought_tokens') int totalThoughtTokens
});




}
/// @nodoc
class _$UsageCopyWithImpl<$Res>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._self, this._then);

  final Usage _self;
  final $Res Function(Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalTokens = null,Object? totalInputTokens = null,Object? inputTokensByModality = null,Object? totalCachedTokens = null,Object? totalOutputTokens = null,Object? totalToolUseTokens = null,Object? totalThoughtTokens = null,}) {
  return _then(_self.copyWith(
totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,totalInputTokens: null == totalInputTokens ? _self.totalInputTokens : totalInputTokens // ignore: cast_nullable_to_non_nullable
as int,inputTokensByModality: null == inputTokensByModality ? _self.inputTokensByModality : inputTokensByModality // ignore: cast_nullable_to_non_nullable
as List<InputTokensByModality>,totalCachedTokens: null == totalCachedTokens ? _self.totalCachedTokens : totalCachedTokens // ignore: cast_nullable_to_non_nullable
as int,totalOutputTokens: null == totalOutputTokens ? _self.totalOutputTokens : totalOutputTokens // ignore: cast_nullable_to_non_nullable
as int,totalToolUseTokens: null == totalToolUseTokens ? _self.totalToolUseTokens : totalToolUseTokens // ignore: cast_nullable_to_non_nullable
as int,totalThoughtTokens: null == totalThoughtTokens ? _self.totalThoughtTokens : totalThoughtTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Usage].
extension UsagePatterns on Usage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Usage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Usage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Usage value)  $default,){
final _that = this;
switch (_that) {
case _Usage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Usage value)?  $default,){
final _that = this;
switch (_that) {
case _Usage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'total_input_tokens')  int totalInputTokens, @JsonKey(name: 'input_tokens_by_modality')  List<InputTokensByModality> inputTokensByModality, @JsonKey(name: 'total_cached_tokens')  int totalCachedTokens, @JsonKey(name: 'total_output_tokens')  int totalOutputTokens, @JsonKey(name: 'total_tool_use_tokens')  int totalToolUseTokens, @JsonKey(name: 'total_thought_tokens')  int totalThoughtTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Usage() when $default != null:
return $default(_that.totalTokens,_that.totalInputTokens,_that.inputTokensByModality,_that.totalCachedTokens,_that.totalOutputTokens,_that.totalToolUseTokens,_that.totalThoughtTokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'total_input_tokens')  int totalInputTokens, @JsonKey(name: 'input_tokens_by_modality')  List<InputTokensByModality> inputTokensByModality, @JsonKey(name: 'total_cached_tokens')  int totalCachedTokens, @JsonKey(name: 'total_output_tokens')  int totalOutputTokens, @JsonKey(name: 'total_tool_use_tokens')  int totalToolUseTokens, @JsonKey(name: 'total_thought_tokens')  int totalThoughtTokens)  $default,) {final _that = this;
switch (_that) {
case _Usage():
return $default(_that.totalTokens,_that.totalInputTokens,_that.inputTokensByModality,_that.totalCachedTokens,_that.totalOutputTokens,_that.totalToolUseTokens,_that.totalThoughtTokens);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'total_input_tokens')  int totalInputTokens, @JsonKey(name: 'input_tokens_by_modality')  List<InputTokensByModality> inputTokensByModality, @JsonKey(name: 'total_cached_tokens')  int totalCachedTokens, @JsonKey(name: 'total_output_tokens')  int totalOutputTokens, @JsonKey(name: 'total_tool_use_tokens')  int totalToolUseTokens, @JsonKey(name: 'total_thought_tokens')  int totalThoughtTokens)?  $default,) {final _that = this;
switch (_that) {
case _Usage() when $default != null:
return $default(_that.totalTokens,_that.totalInputTokens,_that.inputTokensByModality,_that.totalCachedTokens,_that.totalOutputTokens,_that.totalToolUseTokens,_that.totalThoughtTokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Usage implements Usage {
  const _Usage({@JsonKey(name: 'total_tokens') required this.totalTokens, @JsonKey(name: 'total_input_tokens') required this.totalInputTokens, @JsonKey(name: 'input_tokens_by_modality') required final  List<InputTokensByModality> inputTokensByModality, @JsonKey(name: 'total_cached_tokens') required this.totalCachedTokens, @JsonKey(name: 'total_output_tokens') required this.totalOutputTokens, @JsonKey(name: 'total_tool_use_tokens') required this.totalToolUseTokens, @JsonKey(name: 'total_thought_tokens') required this.totalThoughtTokens}): _inputTokensByModality = inputTokensByModality;
  factory _Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);

@override@JsonKey(name: 'total_tokens') final  int totalTokens;
@override@JsonKey(name: 'total_input_tokens') final  int totalInputTokens;
 final  List<InputTokensByModality> _inputTokensByModality;
@override@JsonKey(name: 'input_tokens_by_modality') List<InputTokensByModality> get inputTokensByModality {
  if (_inputTokensByModality is EqualUnmodifiableListView) return _inputTokensByModality;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputTokensByModality);
}

@override@JsonKey(name: 'total_cached_tokens') final  int totalCachedTokens;
@override@JsonKey(name: 'total_output_tokens') final  int totalOutputTokens;
@override@JsonKey(name: 'total_tool_use_tokens') final  int totalToolUseTokens;
@override@JsonKey(name: 'total_thought_tokens') final  int totalThoughtTokens;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageCopyWith<_Usage> get copyWith => __$UsageCopyWithImpl<_Usage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usage&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.totalInputTokens, totalInputTokens) || other.totalInputTokens == totalInputTokens)&&const DeepCollectionEquality().equals(other._inputTokensByModality, _inputTokensByModality)&&(identical(other.totalCachedTokens, totalCachedTokens) || other.totalCachedTokens == totalCachedTokens)&&(identical(other.totalOutputTokens, totalOutputTokens) || other.totalOutputTokens == totalOutputTokens)&&(identical(other.totalToolUseTokens, totalToolUseTokens) || other.totalToolUseTokens == totalToolUseTokens)&&(identical(other.totalThoughtTokens, totalThoughtTokens) || other.totalThoughtTokens == totalThoughtTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalTokens,totalInputTokens,const DeepCollectionEquality().hash(_inputTokensByModality),totalCachedTokens,totalOutputTokens,totalToolUseTokens,totalThoughtTokens);

@override
String toString() {
  return 'Usage(totalTokens: $totalTokens, totalInputTokens: $totalInputTokens, inputTokensByModality: $inputTokensByModality, totalCachedTokens: $totalCachedTokens, totalOutputTokens: $totalOutputTokens, totalToolUseTokens: $totalToolUseTokens, totalThoughtTokens: $totalThoughtTokens)';
}


}

/// @nodoc
abstract mixin class _$UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$UsageCopyWith(_Usage value, $Res Function(_Usage) _then) = __$UsageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'total_input_tokens') int totalInputTokens,@JsonKey(name: 'input_tokens_by_modality') List<InputTokensByModality> inputTokensByModality,@JsonKey(name: 'total_cached_tokens') int totalCachedTokens,@JsonKey(name: 'total_output_tokens') int totalOutputTokens,@JsonKey(name: 'total_tool_use_tokens') int totalToolUseTokens,@JsonKey(name: 'total_thought_tokens') int totalThoughtTokens
});




}
/// @nodoc
class __$UsageCopyWithImpl<$Res>
    implements _$UsageCopyWith<$Res> {
  __$UsageCopyWithImpl(this._self, this._then);

  final _Usage _self;
  final $Res Function(_Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalTokens = null,Object? totalInputTokens = null,Object? inputTokensByModality = null,Object? totalCachedTokens = null,Object? totalOutputTokens = null,Object? totalToolUseTokens = null,Object? totalThoughtTokens = null,}) {
  return _then(_Usage(
totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,totalInputTokens: null == totalInputTokens ? _self.totalInputTokens : totalInputTokens // ignore: cast_nullable_to_non_nullable
as int,inputTokensByModality: null == inputTokensByModality ? _self._inputTokensByModality : inputTokensByModality // ignore: cast_nullable_to_non_nullable
as List<InputTokensByModality>,totalCachedTokens: null == totalCachedTokens ? _self.totalCachedTokens : totalCachedTokens // ignore: cast_nullable_to_non_nullable
as int,totalOutputTokens: null == totalOutputTokens ? _self.totalOutputTokens : totalOutputTokens // ignore: cast_nullable_to_non_nullable
as int,totalToolUseTokens: null == totalToolUseTokens ? _self.totalToolUseTokens : totalToolUseTokens // ignore: cast_nullable_to_non_nullable
as int,totalThoughtTokens: null == totalThoughtTokens ? _self.totalThoughtTokens : totalThoughtTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$InputTokensByModality {

 String get modality; int get tokens;
/// Create a copy of InputTokensByModality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputTokensByModalityCopyWith<InputTokensByModality> get copyWith => _$InputTokensByModalityCopyWithImpl<InputTokensByModality>(this as InputTokensByModality, _$identity);

  /// Serializes this InputTokensByModality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputTokensByModality&&(identical(other.modality, modality) || other.modality == modality)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modality,tokens);

@override
String toString() {
  return 'InputTokensByModality(modality: $modality, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class $InputTokensByModalityCopyWith<$Res>  {
  factory $InputTokensByModalityCopyWith(InputTokensByModality value, $Res Function(InputTokensByModality) _then) = _$InputTokensByModalityCopyWithImpl;
@useResult
$Res call({
 String modality, int tokens
});




}
/// @nodoc
class _$InputTokensByModalityCopyWithImpl<$Res>
    implements $InputTokensByModalityCopyWith<$Res> {
  _$InputTokensByModalityCopyWithImpl(this._self, this._then);

  final InputTokensByModality _self;
  final $Res Function(InputTokensByModality) _then;

/// Create a copy of InputTokensByModality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modality = null,Object? tokens = null,}) {
  return _then(_self.copyWith(
modality: null == modality ? _self.modality : modality // ignore: cast_nullable_to_non_nullable
as String,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [InputTokensByModality].
extension InputTokensByModalityPatterns on InputTokensByModality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputTokensByModality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputTokensByModality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputTokensByModality value)  $default,){
final _that = this;
switch (_that) {
case _InputTokensByModality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputTokensByModality value)?  $default,){
final _that = this;
switch (_that) {
case _InputTokensByModality() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String modality,  int tokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputTokensByModality() when $default != null:
return $default(_that.modality,_that.tokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String modality,  int tokens)  $default,) {final _that = this;
switch (_that) {
case _InputTokensByModality():
return $default(_that.modality,_that.tokens);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String modality,  int tokens)?  $default,) {final _that = this;
switch (_that) {
case _InputTokensByModality() when $default != null:
return $default(_that.modality,_that.tokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InputTokensByModality implements InputTokensByModality {
  const _InputTokensByModality({required this.modality, required this.tokens});
  factory _InputTokensByModality.fromJson(Map<String, dynamic> json) => _$InputTokensByModalityFromJson(json);

@override final  String modality;
@override final  int tokens;

/// Create a copy of InputTokensByModality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputTokensByModalityCopyWith<_InputTokensByModality> get copyWith => __$InputTokensByModalityCopyWithImpl<_InputTokensByModality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputTokensByModalityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputTokensByModality&&(identical(other.modality, modality) || other.modality == modality)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modality,tokens);

@override
String toString() {
  return 'InputTokensByModality(modality: $modality, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class _$InputTokensByModalityCopyWith<$Res> implements $InputTokensByModalityCopyWith<$Res> {
  factory _$InputTokensByModalityCopyWith(_InputTokensByModality value, $Res Function(_InputTokensByModality) _then) = __$InputTokensByModalityCopyWithImpl;
@override @useResult
$Res call({
 String modality, int tokens
});




}
/// @nodoc
class __$InputTokensByModalityCopyWithImpl<$Res>
    implements _$InputTokensByModalityCopyWith<$Res> {
  __$InputTokensByModalityCopyWithImpl(this._self, this._then);

  final _InputTokensByModality _self;
  final $Res Function(_InputTokensByModality) _then;

/// Create a copy of InputTokensByModality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modality = null,Object? tokens = null,}) {
  return _then(_InputTokensByModality(
modality: null == modality ? _self.modality : modality // ignore: cast_nullable_to_non_nullable
as String,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Step {

 String? get signature; String? get type; List<Content>? get content;
/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepCopyWith<Step> get copyWith => _$StepCopyWithImpl<Step>(this as Step, _$identity);

  /// Serializes this Step to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Step&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signature,type,const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'Step(signature: $signature, type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class $StepCopyWith<$Res>  {
  factory $StepCopyWith(Step value, $Res Function(Step) _then) = _$StepCopyWithImpl;
@useResult
$Res call({
 String? signature, String? type, List<Content>? content
});




}
/// @nodoc
class _$StepCopyWithImpl<$Res>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._self, this._then);

  final Step _self;
  final $Res Function(Step) _then;

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signature = freezed,Object? type = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<Content>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Step].
extension StepPatterns on Step {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Step value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Step() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Step value)  $default,){
final _that = this;
switch (_that) {
case _Step():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Step value)?  $default,){
final _that = this;
switch (_that) {
case _Step() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? signature,  String? type,  List<Content>? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Step() when $default != null:
return $default(_that.signature,_that.type,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? signature,  String? type,  List<Content>? content)  $default,) {final _that = this;
switch (_that) {
case _Step():
return $default(_that.signature,_that.type,_that.content);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? signature,  String? type,  List<Content>? content)?  $default,) {final _that = this;
switch (_that) {
case _Step() when $default != null:
return $default(_that.signature,_that.type,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Step implements Step {
  const _Step({this.signature, this.type, final  List<Content>? content}): _content = content;
  factory _Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

@override final  String? signature;
@override final  String? type;
 final  List<Content>? _content;
@override List<Content>? get content {
  final value = _content;
  if (value == null) return null;
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepCopyWith<_Step> get copyWith => __$StepCopyWithImpl<_Step>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Step&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signature,type,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'Step(signature: $signature, type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class _$StepCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$StepCopyWith(_Step value, $Res Function(_Step) _then) = __$StepCopyWithImpl;
@override @useResult
$Res call({
 String? signature, String? type, List<Content>? content
});




}
/// @nodoc
class __$StepCopyWithImpl<$Res>
    implements _$StepCopyWith<$Res> {
  __$StepCopyWithImpl(this._self, this._then);

  final _Step _self;
  final $Res Function(_Step) _then;

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signature = freezed,Object? type = freezed,Object? content = freezed,}) {
  return _then(_Step(
signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<Content>?,
  ));
}


}


/// @nodoc
mixin _$Content {

 String? get text; String get type;
/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentCopyWith<Content> get copyWith => _$ContentCopyWithImpl<Content>(this as Content, _$identity);

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Content&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type);

@override
String toString() {
  return 'Content(text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class $ContentCopyWith<$Res>  {
  factory $ContentCopyWith(Content value, $Res Function(Content) _then) = _$ContentCopyWithImpl;
@useResult
$Res call({
 String? text, String type
});




}
/// @nodoc
class _$ContentCopyWithImpl<$Res>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._self, this._then);

  final Content _self;
  final $Res Function(Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Content].
extension ContentPatterns on Content {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Content value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Content() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Content value)  $default,){
final _that = this;
switch (_that) {
case _Content():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Content value)?  $default,){
final _that = this;
switch (_that) {
case _Content() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? text,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that.text,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? text,  String type)  $default,) {final _that = this;
switch (_that) {
case _Content():
return $default(_that.text,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? text,  String type)?  $default,) {final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that.text,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Content implements Content {
  const _Content({this.text, required this.type});
  factory _Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

@override final  String? text;
@override final  String type;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCopyWith<_Content> get copyWith => __$ContentCopyWithImpl<_Content>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Content&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type);

@override
String toString() {
  return 'Content(text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) = __$ContentCopyWithImpl;
@override @useResult
$Res call({
 String? text, String type
});




}
/// @nodoc
class __$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? type = null,}) {
  return _then(_Content(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
