// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginStarted value)?  started,TResult Function( LoginCpfChanged value)?  cpfChanged,TResult Function( LoginPasswordChanged value)?  passwordChanged,TResult Function( LoginRememberChanged value)?  rememberChanged,TResult Function( LoginSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginStarted() when started != null:
return started(_that);case LoginCpfChanged() when cpfChanged != null:
return cpfChanged(_that);case LoginPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case LoginRememberChanged() when rememberChanged != null:
return rememberChanged(_that);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginStarted value)  started,required TResult Function( LoginCpfChanged value)  cpfChanged,required TResult Function( LoginPasswordChanged value)  passwordChanged,required TResult Function( LoginRememberChanged value)  rememberChanged,required TResult Function( LoginSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case LoginStarted():
return started(_that);case LoginCpfChanged():
return cpfChanged(_that);case LoginPasswordChanged():
return passwordChanged(_that);case LoginRememberChanged():
return rememberChanged(_that);case LoginSubmitted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginStarted value)?  started,TResult? Function( LoginCpfChanged value)?  cpfChanged,TResult? Function( LoginPasswordChanged value)?  passwordChanged,TResult? Function( LoginRememberChanged value)?  rememberChanged,TResult? Function( LoginSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case LoginStarted() when started != null:
return started(_that);case LoginCpfChanged() when cpfChanged != null:
return cpfChanged(_that);case LoginPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case LoginRememberChanged() when rememberChanged != null:
return rememberChanged(_that);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String cpf)?  cpfChanged,TResult Function( String password)?  passwordChanged,TResult Function( bool remember)?  rememberChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginStarted() when started != null:
return started();case LoginCpfChanged() when cpfChanged != null:
return cpfChanged(_that.cpf);case LoginPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case LoginRememberChanged() when rememberChanged != null:
return rememberChanged(_that.remember);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String cpf)  cpfChanged,required TResult Function( String password)  passwordChanged,required TResult Function( bool remember)  rememberChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case LoginStarted():
return started();case LoginCpfChanged():
return cpfChanged(_that.cpf);case LoginPasswordChanged():
return passwordChanged(_that.password);case LoginRememberChanged():
return rememberChanged(_that.remember);case LoginSubmitted():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String cpf)?  cpfChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( bool remember)?  rememberChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case LoginStarted() when started != null:
return started();case LoginCpfChanged() when cpfChanged != null:
return cpfChanged(_that.cpf);case LoginPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case LoginRememberChanged() when rememberChanged != null:
return rememberChanged(_that.remember);case LoginSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class LoginStarted implements LoginEvent {
  const LoginStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoginEvent.started()';
}


}




/// @nodoc


class LoginCpfChanged implements LoginEvent {
  const LoginCpfChanged({required this.cpf});
  

 final  String cpf;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCpfChangedCopyWith<LoginCpfChanged> get copyWith => _$LoginCpfChangedCopyWithImpl<LoginCpfChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCpfChanged&&(identical(other.cpf, cpf) || other.cpf == cpf));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cpf);
}

@override
String toString() {
    return 'LoginEvent.cpfChanged(cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class $LoginCpfChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCpfChangedCopyWith(LoginCpfChanged value, $Res Function(LoginCpfChanged) _then) = _$LoginCpfChangedCopyWithImpl;
@useResult
$Res call({
 String cpf
});




}
/// @nodoc
class _$LoginCpfChangedCopyWithImpl<$Res>
    implements $LoginCpfChangedCopyWith<$Res> {
  _$LoginCpfChangedCopyWithImpl(this._self, this._then);

  final LoginCpfChanged _self;
  final $Res Function(LoginCpfChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cpf = null,}) {
  return _then(LoginCpfChanged(
cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginPasswordChanged implements LoginEvent {
  const LoginPasswordChanged({required this.password});
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPasswordChangedCopyWith<LoginPasswordChanged> get copyWith => _$LoginPasswordChangedCopyWithImpl<LoginPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginPasswordChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginPasswordChangedCopyWith(LoginPasswordChanged value, $Res Function(LoginPasswordChanged) _then) = _$LoginPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$LoginPasswordChangedCopyWithImpl<$Res>
    implements $LoginPasswordChangedCopyWith<$Res> {
  _$LoginPasswordChangedCopyWithImpl(this._self, this._then);

  final LoginPasswordChanged _self;
  final $Res Function(LoginPasswordChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(LoginPasswordChanged(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginRememberChanged implements LoginEvent {
  const LoginRememberChanged({required this.remember});
  

 final  bool remember;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRememberChangedCopyWith<LoginRememberChanged> get copyWith => _$LoginRememberChangedCopyWithImpl<LoginRememberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRememberChanged&&(identical(other.remember, remember) || other.remember == remember));
}


@override
int get hashCode {
    return Object.hash(runtimeType,remember);
}

@override
String toString() {
    return 'LoginEvent.rememberChanged(remember: $remember)';
}


}

/// @nodoc
abstract mixin class $LoginRememberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginRememberChangedCopyWith(LoginRememberChanged value, $Res Function(LoginRememberChanged) _then) = _$LoginRememberChangedCopyWithImpl;
@useResult
$Res call({
 bool remember
});




}
/// @nodoc
class _$LoginRememberChangedCopyWithImpl<$Res>
    implements $LoginRememberChangedCopyWith<$Res> {
  _$LoginRememberChangedCopyWithImpl(this._self, this._then);

  final LoginRememberChanged _self;
  final $Res Function(LoginRememberChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remember = null,}) {
  return _then(LoginRememberChanged(
remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoginSubmitted implements LoginEvent {
  const LoginSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoginEvent.submitted()';
}


}




/// @nodoc
mixin _$LoginState {

 LoginStatus get status; String get cpf; String get password; bool get remember;/// Preferências já lidas: a página preenche o CPF uma única vez.
 bool get savedLoaded; UserModel? get user; AuthFailure? get failure;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoginState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.cpf, _this.cpf) || other.cpf == _this.cpf)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.remember, _this.remember) || other.remember == _this.remember)&&(identical(other.savedLoaded, _this.savedLoaded) || other.savedLoaded == _this.savedLoaded)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.failure, _this.failure) || other.failure == _this.failure));
}


@override
int get hashCode {
  final _this = this as LoginState;
  return Object.hash(runtimeType,_this.status,_this.cpf,_this.password,_this.remember,_this.savedLoaded,_this.user,_this.failure);
}

@override
String toString() {
  final _this = this as LoginState;
  return 'LoginState(status: ${_this.status}, cpf: ${_this.cpf}, password: ${_this.password}, remember: ${_this.remember}, savedLoaded: ${_this.savedLoaded}, user: ${_this.user}, failure: ${_this.failure})';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginStatus status, String cpf, String password, bool remember, bool savedLoaded, UserModel? user, AuthFailure? failure
});


$UserModelCopyWith<$Res>? get user;$AuthFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cpf = null,Object? password = null,Object? remember = null,Object? savedLoaded = null,Object? user = freezed,Object? failure = freezed,}) {
  return _then(LoginState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,savedLoaded: null == savedLoaded ? _self.savedLoaded : savedLoaded // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,
  ));
}
/// Create a copy of LoginState
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
}/// Create a copy of LoginState
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


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoginStatus status,  String cpf,  String password,  bool remember,  bool savedLoaded,  UserModel? user,  AuthFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.cpf,_that.password,_that.remember,_that.savedLoaded,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoginStatus status,  String cpf,  String password,  bool remember,  bool savedLoaded,  UserModel? user,  AuthFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.status,_that.cpf,_that.password,_that.remember,_that.savedLoaded,_that.user,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoginStatus status,  String cpf,  String password,  bool remember,  bool savedLoaded,  UserModel? user,  AuthFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.cpf,_that.password,_that.remember,_that.savedLoaded,_that.user,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({this.status = LoginStatus.initial, this.cpf = '', this.password = '', this.remember = true, this.savedLoaded = false, this.user, this.failure});
  

@override@JsonKey() final  LoginStatus status;
@override@JsonKey() final  String cpf;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool remember;
/// Preferências já lidas: a página preenche o CPF uma única vez.
@override@JsonKey() final  bool savedLoaded;
@override final  UserModel? user;
@override final  AuthFailure? failure;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.status, status) || other.status == status)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.password, password) || other.password == password)&&(identical(other.remember, remember) || other.remember == remember)&&(identical(other.savedLoaded, savedLoaded) || other.savedLoaded == savedLoaded)&&(identical(other.user, user) || other.user == user)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,cpf,password,remember,savedLoaded,user,failure);
}

@override
String toString() {
    return 'LoginState(status: $status, cpf: $cpf, password: $password, remember: $remember, savedLoaded: $savedLoaded, user: $user, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 LoginStatus status, String cpf, String password, bool remember, bool savedLoaded, UserModel? user, AuthFailure? failure
});


@override $UserModelCopyWith<$Res>? get user;@override $AuthFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cpf = null,Object? password = null,Object? remember = null,Object? savedLoaded = null,Object? user = freezed,Object? failure = freezed,}) {
  return _then(_LoginState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,remember: null == remember ? _self.remember : remember // ignore: cast_nullable_to_non_nullable
as bool,savedLoaded: null == savedLoaded ? _self.savedLoaded : savedLoaded // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,
  ));
}

/// Create a copy of LoginState
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
}/// Create a copy of LoginState
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
