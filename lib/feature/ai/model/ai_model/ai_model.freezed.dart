// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiModel {

 String get name; String get provider; String get secureStorageKey; bool get hasApiKey;
/// Create a copy of AiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiModelCopyWith<AiModel> get copyWith => _$AiModelCopyWithImpl<AiModel>(this as AiModel, _$identity);

  /// Serializes this AiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.secureStorageKey, secureStorageKey) || other.secureStorageKey == secureStorageKey)&&(identical(other.hasApiKey, hasApiKey) || other.hasApiKey == hasApiKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,provider,secureStorageKey,hasApiKey);

@override
String toString() {
  return 'AiModel(name: $name, provider: $provider, secureStorageKey: $secureStorageKey, hasApiKey: $hasApiKey)';
}


}

/// @nodoc
abstract mixin class $AiModelCopyWith<$Res>  {
  factory $AiModelCopyWith(AiModel value, $Res Function(AiModel) _then) = _$AiModelCopyWithImpl;
@useResult
$Res call({
 String name, String provider, String secureStorageKey, bool hasApiKey
});




}
/// @nodoc
class _$AiModelCopyWithImpl<$Res>
    implements $AiModelCopyWith<$Res> {
  _$AiModelCopyWithImpl(this._self, this._then);

  final AiModel _self;
  final $Res Function(AiModel) _then;

/// Create a copy of AiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? provider = null,Object? secureStorageKey = null,Object? hasApiKey = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,secureStorageKey: null == secureStorageKey ? _self.secureStorageKey : secureStorageKey // ignore: cast_nullable_to_non_nullable
as String,hasApiKey: null == hasApiKey ? _self.hasApiKey : hasApiKey // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiModel].
extension AiModelPatterns on AiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiModel value)  $default,){
final _that = this;
switch (_that) {
case _AiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiModel value)?  $default,){
final _that = this;
switch (_that) {
case _AiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String provider,  String secureStorageKey,  bool hasApiKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiModel() when $default != null:
return $default(_that.name,_that.provider,_that.secureStorageKey,_that.hasApiKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String provider,  String secureStorageKey,  bool hasApiKey)  $default,) {final _that = this;
switch (_that) {
case _AiModel():
return $default(_that.name,_that.provider,_that.secureStorageKey,_that.hasApiKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String provider,  String secureStorageKey,  bool hasApiKey)?  $default,) {final _that = this;
switch (_that) {
case _AiModel() when $default != null:
return $default(_that.name,_that.provider,_that.secureStorageKey,_that.hasApiKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiModel implements AiModel {
  const _AiModel({required this.name, required this.provider, required this.secureStorageKey, required this.hasApiKey});
  factory _AiModel.fromJson(Map<String, dynamic> json) => _$AiModelFromJson(json);

@override final  String name;
@override final  String provider;
@override final  String secureStorageKey;
@override final  bool hasApiKey;

/// Create a copy of AiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiModelCopyWith<_AiModel> get copyWith => __$AiModelCopyWithImpl<_AiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.secureStorageKey, secureStorageKey) || other.secureStorageKey == secureStorageKey)&&(identical(other.hasApiKey, hasApiKey) || other.hasApiKey == hasApiKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,provider,secureStorageKey,hasApiKey);

@override
String toString() {
  return 'AiModel(name: $name, provider: $provider, secureStorageKey: $secureStorageKey, hasApiKey: $hasApiKey)';
}


}

/// @nodoc
abstract mixin class _$AiModelCopyWith<$Res> implements $AiModelCopyWith<$Res> {
  factory _$AiModelCopyWith(_AiModel value, $Res Function(_AiModel) _then) = __$AiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String provider, String secureStorageKey, bool hasApiKey
});




}
/// @nodoc
class __$AiModelCopyWithImpl<$Res>
    implements _$AiModelCopyWith<$Res> {
  __$AiModelCopyWithImpl(this._self, this._then);

  final _AiModel _self;
  final $Res Function(_AiModel) _then;

/// Create a copy of AiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? provider = null,Object? secureStorageKey = null,Object? hasApiKey = null,}) {
  return _then(_AiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,secureStorageKey: null == secureStorageKey ? _self.secureStorageKey : secureStorageKey // ignore: cast_nullable_to_non_nullable
as String,hasApiKey: null == hasApiKey ? _self.hasApiKey : hasApiKey // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
