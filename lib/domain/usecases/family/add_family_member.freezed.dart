// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_family_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddFamilyMemberParams {

 String get userId; String get name; FamilyRelationship get relationship;
/// Create a copy of AddFamilyMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFamilyMemberParamsCopyWith<AddFamilyMemberParams> get copyWith => _$AddFamilyMemberParamsCopyWithImpl<AddFamilyMemberParams>(this as AddFamilyMemberParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddFamilyMemberParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFamilyMemberParams&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.relationship, _this.relationship) || other.relationship == _this.relationship));
}


@override
int get hashCode {
  final _this = this as AddFamilyMemberParams;
  return Object.hash(runtimeType,_this.userId,_this.name,_this.relationship);
}

@override
String toString() {
  final _this = this as AddFamilyMemberParams;
  return 'AddFamilyMemberParams(userId: ${_this.userId}, name: ${_this.name}, relationship: ${_this.relationship})';
}


}

/// @nodoc
abstract mixin class $AddFamilyMemberParamsCopyWith<$Res>  {
  factory $AddFamilyMemberParamsCopyWith(AddFamilyMemberParams value, $Res Function(AddFamilyMemberParams) _then) = _$AddFamilyMemberParamsCopyWithImpl;
@useResult
$Res call({
 String userId, String name, FamilyRelationship relationship
});




}
/// @nodoc
class _$AddFamilyMemberParamsCopyWithImpl<$Res>
    implements $AddFamilyMemberParamsCopyWith<$Res> {
  _$AddFamilyMemberParamsCopyWithImpl(this._self, this._then);

  final AddFamilyMemberParams _self;
  final $Res Function(AddFamilyMemberParams) _then;

/// Create a copy of AddFamilyMemberParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? relationship = null,}) {
  return _then(AddFamilyMemberParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as FamilyRelationship,
  ));
}

}


/// Adds pattern-matching-related methods to [AddFamilyMemberParams].
extension AddFamilyMemberParamsPatterns on AddFamilyMemberParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddFamilyMemberParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddFamilyMemberParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddFamilyMemberParams value)  $default,){
final _that = this;
switch (_that) {
case _AddFamilyMemberParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddFamilyMemberParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddFamilyMemberParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String name,  FamilyRelationship relationship)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddFamilyMemberParams() when $default != null:
return $default(_that.userId,_that.name,_that.relationship);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String name,  FamilyRelationship relationship)  $default,) {final _that = this;
switch (_that) {
case _AddFamilyMemberParams():
return $default(_that.userId,_that.name,_that.relationship);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String name,  FamilyRelationship relationship)?  $default,) {final _that = this;
switch (_that) {
case _AddFamilyMemberParams() when $default != null:
return $default(_that.userId,_that.name,_that.relationship);case _:
  return null;

}
}

}

/// @nodoc


class _AddFamilyMemberParams implements AddFamilyMemberParams {
  const _AddFamilyMemberParams({required this.userId, required this.name, required this.relationship});
  

@override final  String userId;
@override final  String name;
@override final  FamilyRelationship relationship;

/// Create a copy of AddFamilyMemberParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFamilyMemberParamsCopyWith<_AddFamilyMemberParams> get copyWith => __$AddFamilyMemberParamsCopyWithImpl<_AddFamilyMemberParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFamilyMemberParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.relationship, relationship) || other.relationship == relationship));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userId,name,relationship);
}

@override
String toString() {
    return 'AddFamilyMemberParams(userId: $userId, name: $name, relationship: $relationship)';
}


}

/// @nodoc
abstract mixin class _$AddFamilyMemberParamsCopyWith<$Res> implements $AddFamilyMemberParamsCopyWith<$Res> {
  factory _$AddFamilyMemberParamsCopyWith(_AddFamilyMemberParams value, $Res Function(_AddFamilyMemberParams) _then) = __$AddFamilyMemberParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name, FamilyRelationship relationship
});




}
/// @nodoc
class __$AddFamilyMemberParamsCopyWithImpl<$Res>
    implements _$AddFamilyMemberParamsCopyWith<$Res> {
  __$AddFamilyMemberParamsCopyWithImpl(this._self, this._then);

  final _AddFamilyMemberParams _self;
  final $Res Function(_AddFamilyMemberParams) _then;

/// Create a copy of AddFamilyMemberParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? relationship = null,}) {
  return _then(_AddFamilyMemberParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as FamilyRelationship,
  ));
}


}

// dart format on
