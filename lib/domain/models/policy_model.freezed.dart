// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PolicyModel {

 String get id; InsuranceType get type; String get description; DateTime get validUntil;
/// Create a copy of PolicyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PolicyModelCopyWith<PolicyModel> get copyWith => _$PolicyModelCopyWithImpl<PolicyModel>(this as PolicyModel, _$identity);

  /// Serializes this PolicyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PolicyModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PolicyModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.validUntil, _this.validUntil) || other.validUntil == _this.validUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PolicyModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.description,_this.validUntil);
}

@override
String toString() {
  final _this = this as PolicyModel;
  return 'PolicyModel(id: ${_this.id}, type: ${_this.type}, description: ${_this.description}, validUntil: ${_this.validUntil})';
}


}

/// @nodoc
abstract mixin class $PolicyModelCopyWith<$Res>  {
  factory $PolicyModelCopyWith(PolicyModel value, $Res Function(PolicyModel) _then) = _$PolicyModelCopyWithImpl;
@useResult
$Res call({
 String id, InsuranceType type, String description, DateTime validUntil
});




}
/// @nodoc
class _$PolicyModelCopyWithImpl<$Res>
    implements $PolicyModelCopyWith<$Res> {
  _$PolicyModelCopyWithImpl(this._self, this._then);

  final PolicyModel _self;
  final $Res Function(PolicyModel) _then;

/// Create a copy of PolicyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? description = null,Object? validUntil = null,}) {
  return _then(PolicyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InsuranceType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PolicyModel].
extension PolicyModelPatterns on PolicyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PolicyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PolicyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PolicyModel value)  $default,){
final _that = this;
switch (_that) {
case _PolicyModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PolicyModel value)?  $default,){
final _that = this;
switch (_that) {
case _PolicyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  InsuranceType type,  String description,  DateTime validUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PolicyModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.validUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  InsuranceType type,  String description,  DateTime validUntil)  $default,) {final _that = this;
switch (_that) {
case _PolicyModel():
return $default(_that.id,_that.type,_that.description,_that.validUntil);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  InsuranceType type,  String description,  DateTime validUntil)?  $default,) {final _that = this;
switch (_that) {
case _PolicyModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.validUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PolicyModel implements PolicyModel {
  const _PolicyModel({required this.id, required this.type, required this.description, required this.validUntil});
  factory _PolicyModel.fromJson(Map<String, dynamic> json) => _$PolicyModelFromJson(json);

@override final  String id;
@override final  InsuranceType type;
@override final  String description;
@override final  DateTime validUntil;

/// Create a copy of PolicyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PolicyModelCopyWith<_PolicyModel> get copyWith => __$PolicyModelCopyWithImpl<_PolicyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PolicyModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PolicyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,description,validUntil);
}

@override
String toString() {
    return 'PolicyModel(id: $id, type: $type, description: $description, validUntil: $validUntil)';
}


}

/// @nodoc
abstract mixin class _$PolicyModelCopyWith<$Res> implements $PolicyModelCopyWith<$Res> {
  factory _$PolicyModelCopyWith(_PolicyModel value, $Res Function(_PolicyModel) _then) = __$PolicyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, InsuranceType type, String description, DateTime validUntil
});




}
/// @nodoc
class __$PolicyModelCopyWithImpl<$Res>
    implements _$PolicyModelCopyWith<$Res> {
  __$PolicyModelCopyWithImpl(this._self, this._then);

  final _PolicyModel _self;
  final $Res Function(_PolicyModel) _then;

/// Create a copy of PolicyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? description = null,Object? validUntil = null,}) {
  return _then(_PolicyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InsuranceType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
