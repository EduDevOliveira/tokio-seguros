// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedLoginModel {

 bool get remember; String? get cpf;
/// Create a copy of SavedLoginModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedLoginModelCopyWith<SavedLoginModel> get copyWith => _$SavedLoginModelCopyWithImpl<SavedLoginModel>(this as SavedLoginModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SavedLoginModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedLoginModel&&(identical(other.remember, _this.remember) || other.remember == _this.remember)&&(identical(other.cpf, _this.cpf) || other.cpf == _this.cpf));
}


@override
int get hashCode {
  final _this = this as SavedLoginModel;
  return Object.hash(runtimeType,_this.remember,_this.cpf);
}

@override
String toString() {
  final _this = this as SavedLoginModel;
  return 'SavedLoginModel(remember: ${_this.remember}, cpf: ${_this.cpf})';
}


}

/// @nodoc
abstract mixin class $SavedLoginModelCopyWith<$Res>  {
  factory $SavedLoginModelCopyWith(SavedLoginModel value, $Res Function(SavedLoginModel) _then) = _$SavedLoginModelCopyWithImpl;
@useResult
$Res call({
 bool remember, String? cpf
});




}
/// @nodoc
class _$SavedLoginModelCopyWithImpl<$Res>
    implements $SavedLoginModelCopyWith<$Res> {
  _$SavedLoginModelCopyWithImpl(this._self, this._then);

  final SavedLoginModel _self;
  final $Res Function(SavedLoginModel) _then;

/// Create a copy of SavedLoginModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? remember = null,Object? cpf = freezed,}) {
  return _then(SavedLoginModel(
remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,cpf: freezed == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedLoginModel].
extension SavedLoginModelPatterns on SavedLoginModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedLoginModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedLoginModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedLoginModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedLoginModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedLoginModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedLoginModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool remember,  String? cpf)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedLoginModel() when $default != null:
return $default(_that.remember,_that.cpf);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool remember,  String? cpf)  $default,) {final _that = this;
switch (_that) {
case _SavedLoginModel():
return $default(_that.remember,_that.cpf);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool remember,  String? cpf)?  $default,) {final _that = this;
switch (_that) {
case _SavedLoginModel() when $default != null:
return $default(_that.remember,_that.cpf);case _:
  return null;

}
}

}

/// @nodoc


class _SavedLoginModel implements SavedLoginModel {
  const _SavedLoginModel({this.remember = true, this.cpf});
  

@override@JsonKey() final  bool remember;
@override final  String? cpf;

/// Create a copy of SavedLoginModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedLoginModelCopyWith<_SavedLoginModel> get copyWith => __$SavedLoginModelCopyWithImpl<_SavedLoginModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedLoginModel&&(identical(other.remember, remember) || other.remember == remember)&&(identical(other.cpf, cpf) || other.cpf == cpf));
}


@override
int get hashCode {
    return Object.hash(runtimeType,remember,cpf);
}

@override
String toString() {
    return 'SavedLoginModel(remember: $remember, cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class _$SavedLoginModelCopyWith<$Res> implements $SavedLoginModelCopyWith<$Res> {
  factory _$SavedLoginModelCopyWith(_SavedLoginModel value, $Res Function(_SavedLoginModel) _then) = __$SavedLoginModelCopyWithImpl;
@override @useResult
$Res call({
 bool remember, String? cpf
});




}
/// @nodoc
class __$SavedLoginModelCopyWithImpl<$Res>
    implements _$SavedLoginModelCopyWith<$Res> {
  __$SavedLoginModelCopyWithImpl(this._self, this._then);

  final _SavedLoginModel _self;
  final $Res Function(_SavedLoginModel) _then;

/// Create a copy of SavedLoginModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? remember = null,Object? cpf = freezed,}) {
  return _then(_SavedLoginModel(
remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,cpf: freezed == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
