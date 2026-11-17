// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterNameChanged value)?  nameChanged,TResult Function( RegisterCpfChanged value)?  cpfChanged,TResult Function( RegisterPasswordChanged value)?  passwordChanged,TResult Function( RegisterSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterNameChanged() when nameChanged != null:
return nameChanged(_that);case RegisterCpfChanged() when cpfChanged != null:
return cpfChanged(_that);case RegisterPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case RegisterSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterNameChanged value)  nameChanged,required TResult Function( RegisterCpfChanged value)  cpfChanged,required TResult Function( RegisterPasswordChanged value)  passwordChanged,required TResult Function( RegisterSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case RegisterNameChanged():
return nameChanged(_that);case RegisterCpfChanged():
return cpfChanged(_that);case RegisterPasswordChanged():
return passwordChanged(_that);case RegisterSubmitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterNameChanged value)?  nameChanged,TResult? Function( RegisterCpfChanged value)?  cpfChanged,TResult? Function( RegisterPasswordChanged value)?  passwordChanged,TResult? Function( RegisterSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case RegisterNameChanged() when nameChanged != null:
return nameChanged(_that);case RegisterCpfChanged() when cpfChanged != null:
return cpfChanged(_that);case RegisterPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case RegisterSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String cpf)?  cpfChanged,TResult Function( String password)?  passwordChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterNameChanged() when nameChanged != null:
return nameChanged(_that.name);case RegisterCpfChanged() when cpfChanged != null:
return cpfChanged(_that.cpf);case RegisterPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case RegisterSubmitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String cpf)  cpfChanged,required TResult Function( String password)  passwordChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case RegisterNameChanged():
return nameChanged(_that.name);case RegisterCpfChanged():
return cpfChanged(_that.cpf);case RegisterPasswordChanged():
return passwordChanged(_that.password);case RegisterSubmitted():
return submitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String cpf)?  cpfChanged,TResult? Function( String password)?  passwordChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case RegisterNameChanged() when nameChanged != null:
return nameChanged(_that.name);case RegisterCpfChanged() when cpfChanged != null:
return cpfChanged(_that.cpf);case RegisterPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case RegisterSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class RegisterNameChanged implements RegisterEvent {
  const RegisterNameChanged({required this.name});
  

 final  String name;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterNameChangedCopyWith<RegisterNameChanged> get copyWith => _$RegisterNameChangedCopyWithImpl<RegisterNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterNameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name);
}

@override
String toString() {
    return 'RegisterEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $RegisterNameChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $RegisterNameChangedCopyWith(RegisterNameChanged value, $Res Function(RegisterNameChanged) _then) = _$RegisterNameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$RegisterNameChangedCopyWithImpl<$Res>
    implements $RegisterNameChangedCopyWith<$Res> {
  _$RegisterNameChangedCopyWithImpl(this._self, this._then);

  final RegisterNameChanged _self;
  final $Res Function(RegisterNameChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(RegisterNameChanged(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterCpfChanged implements RegisterEvent {
  const RegisterCpfChanged({required this.cpf});
  

 final  String cpf;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCpfChangedCopyWith<RegisterCpfChanged> get copyWith => _$RegisterCpfChangedCopyWithImpl<RegisterCpfChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterCpfChanged&&(identical(other.cpf, cpf) || other.cpf == cpf));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cpf);
}

@override
String toString() {
    return 'RegisterEvent.cpfChanged(cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class $RegisterCpfChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $RegisterCpfChangedCopyWith(RegisterCpfChanged value, $Res Function(RegisterCpfChanged) _then) = _$RegisterCpfChangedCopyWithImpl;
@useResult
$Res call({
 String cpf
});




}
/// @nodoc
class _$RegisterCpfChangedCopyWithImpl<$Res>
    implements $RegisterCpfChangedCopyWith<$Res> {
  _$RegisterCpfChangedCopyWithImpl(this._self, this._then);

  final RegisterCpfChanged _self;
  final $Res Function(RegisterCpfChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cpf = null,}) {
  return _then(RegisterCpfChanged(
cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterPasswordChanged implements RegisterEvent {
  const RegisterPasswordChanged({required this.password});
  

 final  String password;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterPasswordChangedCopyWith<RegisterPasswordChanged> get copyWith => _$RegisterPasswordChangedCopyWithImpl<RegisterPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterPasswordChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $RegisterPasswordChangedCopyWith(RegisterPasswordChanged value, $Res Function(RegisterPasswordChanged) _then) = _$RegisterPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$RegisterPasswordChangedCopyWithImpl<$Res>
    implements $RegisterPasswordChangedCopyWith<$Res> {
  _$RegisterPasswordChangedCopyWithImpl(this._self, this._then);

  final RegisterPasswordChanged _self;
  final $Res Function(RegisterPasswordChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(RegisterPasswordChanged(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterSubmitted implements RegisterEvent {
  const RegisterSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'RegisterEvent.submitted()';
}


}




/// @nodoc
mixin _$RegisterState {

 RegisterStatus get status; String get name; String get cpf; String get password; UserModel? get user; AuthFailure? get failure;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RegisterState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.cpf, _this.cpf) || other.cpf == _this.cpf)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.failure, _this.failure) || other.failure == _this.failure));
}


@override
int get hashCode {
  final _this = this as RegisterState;
  return Object.hash(runtimeType,_this.status,_this.name,_this.cpf,_this.password,_this.user,_this.failure);
}

@override
String toString() {
  final _this = this as RegisterState;
  return 'RegisterState(status: ${_this.status}, name: ${_this.name}, cpf: ${_this.cpf}, password: ${_this.password}, user: ${_this.user}, failure: ${_this.failure})';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 RegisterStatus status, String name, String cpf, String password, UserModel? user, AuthFailure? failure
});


$UserModelCopyWith<$Res>? get user;$AuthFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? name = null,Object? cpf = null,Object? password = null,Object? user = freezed,Object? failure = freezed,}) {
  return _then(RegisterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RegisterStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AuthFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RegisterStatus status,  String name,  String cpf,  String password,  UserModel? user,  AuthFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.status,_that.name,_that.cpf,_that.password,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RegisterStatus status,  String name,  String cpf,  String password,  UserModel? user,  AuthFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.status,_that.name,_that.cpf,_that.password,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RegisterStatus status,  String name,  String cpf,  String password,  UserModel? user,  AuthFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.status,_that.name,_that.cpf,_that.password,_that.user,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({this.status = RegisterStatus.initial, this.name = '', this.cpf = '', this.password = '', this.user, this.failure});
  

@override@JsonKey() final  RegisterStatus status;
@override@JsonKey() final  String name;
@override@JsonKey() final  String cpf;
@override@JsonKey() final  String password;
@override final  UserModel? user;
@override final  AuthFailure? failure;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.password, password) || other.password == password)&&(identical(other.user, user) || other.user == user)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,name,cpf,password,user,failure);
}

@override
String toString() {
    return 'RegisterState(status: $status, name: $name, cpf: $cpf, password: $password, user: $user, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 RegisterStatus status, String name, String cpf, String password, UserModel? user, AuthFailure? failure
});


@override $UserModelCopyWith<$Res>? get user;@override $AuthFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? name = null,Object? cpf = null,Object? password = null,Object? user = freezed,Object? failure = freezed,}) {
  return _then(_RegisterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RegisterStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AuthFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
