// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginParams {

 String get cpf; String get password; bool get remember;
/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginParamsCopyWith<LoginParams> get copyWith => _$LoginParamsCopyWithImpl<LoginParams>(this as LoginParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoginParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginParams&&(identical(other.cpf, _this.cpf) || other.cpf == _this.cpf)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.remember, _this.remember) || other.remember == _this.remember));
}


@override
int get hashCode {
  final _this = this as LoginParams;
  return Object.hash(runtimeType,_this.cpf,_this.password,_this.remember);
}

@override
String toString() {
  final _this = this as LoginParams;
  return 'LoginParams(cpf: ${_this.cpf}, password: ${_this.password}, remember: ${_this.remember})';
}


}

/// @nodoc
abstract mixin class $LoginParamsCopyWith<$Res>  {
  factory $LoginParamsCopyWith(LoginParams value, $Res Function(LoginParams) _then) = _$LoginParamsCopyWithImpl;
@useResult
$Res call({
 String cpf, String password, bool remember
});




}
/// @nodoc
class _$LoginParamsCopyWithImpl<$Res>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._self, this._then);

  final LoginParams _self;
  final $Res Function(LoginParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cpf = null,Object? password = null,Object? remember = null,}) {
  return _then(LoginParams(
cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginParams].
extension LoginParamsPatterns on LoginParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginParams value)  $default,){
final _that = this;
switch (_that) {
case _LoginParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginParams value)?  $default,){
final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cpf,  String password,  bool remember)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
return $default(_that.cpf,_that.password,_that.remember);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cpf,  String password,  bool remember)  $default,) {final _that = this;
switch (_that) {
case _LoginParams():
return $default(_that.cpf,_that.password,_that.remember);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cpf,  String password,  bool remember)?  $default,) {final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
return $default(_that.cpf,_that.password,_that.remember);case _:
  return null;

}
}

}

/// @nodoc


class _LoginParams implements LoginParams {
  const _LoginParams({required this.cpf, required this.password, this.remember = true});
  

@override final  String cpf;
@override final  String password;
@override@JsonKey() final  bool remember;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginParamsCopyWith<_LoginParams> get copyWith => __$LoginParamsCopyWithImpl<_LoginParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginParams&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.password, password) || other.password == password)&&(identical(other.remember, remember) || other.remember == remember));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cpf,password,remember);
}

@override
String toString() {
    return 'LoginParams(cpf: $cpf, password: $password, remember: $remember)';
}


}

/// @nodoc
abstract mixin class _$LoginParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory _$LoginParamsCopyWith(_LoginParams value, $Res Function(_LoginParams) _then) = __$LoginParamsCopyWithImpl;
@override @useResult
$Res call({
 String cpf, String password, bool remember
});




}
/// @nodoc
class __$LoginParamsCopyWithImpl<$Res>
    implements _$LoginParamsCopyWith<$Res> {
  __$LoginParamsCopyWithImpl(this._self, this._then);

  final _LoginParams _self;
  final $Res Function(_LoginParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cpf = null,Object? password = null,Object? remember = null,}) {
  return _then(_LoginParams(
cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
