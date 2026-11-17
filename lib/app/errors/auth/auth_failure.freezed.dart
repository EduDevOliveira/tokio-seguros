// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvalidCredentialsFailure value)?  invalidCredentials,TResult Function( CpfAlreadyRegisteredFailure value)?  cpfAlreadyRegistered,TResult Function( WeakPasswordFailure value)?  weakPassword,TResult Function( UserDisabledFailure value)?  userDisabled,TResult Function( TooManyRequestsFailure value)?  tooManyRequests,TResult Function( NetworkFailure value)?  network,TResult Function( ServerFailure value)?  server,TResult Function( UnexpectedFailure value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InvalidCredentialsFailure() when invalidCredentials != null:
return invalidCredentials(_that);case CpfAlreadyRegisteredFailure() when cpfAlreadyRegistered != null:
return cpfAlreadyRegistered(_that);case WeakPasswordFailure() when weakPassword != null:
return weakPassword(_that);case UserDisabledFailure() when userDisabled != null:
return userDisabled(_that);case TooManyRequestsFailure() when tooManyRequests != null:
return tooManyRequests(_that);case NetworkFailure() when network != null:
return network(_that);case ServerFailure() when server != null:
return server(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvalidCredentialsFailure value)  invalidCredentials,required TResult Function( CpfAlreadyRegisteredFailure value)  cpfAlreadyRegistered,required TResult Function( WeakPasswordFailure value)  weakPassword,required TResult Function( UserDisabledFailure value)  userDisabled,required TResult Function( TooManyRequestsFailure value)  tooManyRequests,required TResult Function( NetworkFailure value)  network,required TResult Function( ServerFailure value)  server,required TResult Function( UnexpectedFailure value)  unexpected,}){
final _that = this;
switch (_that) {
case InvalidCredentialsFailure():
return invalidCredentials(_that);case CpfAlreadyRegisteredFailure():
return cpfAlreadyRegistered(_that);case WeakPasswordFailure():
return weakPassword(_that);case UserDisabledFailure():
return userDisabled(_that);case TooManyRequestsFailure():
return tooManyRequests(_that);case NetworkFailure():
return network(_that);case ServerFailure():
return server(_that);case UnexpectedFailure():
return unexpected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvalidCredentialsFailure value)?  invalidCredentials,TResult? Function( CpfAlreadyRegisteredFailure value)?  cpfAlreadyRegistered,TResult? Function( WeakPasswordFailure value)?  weakPassword,TResult? Function( UserDisabledFailure value)?  userDisabled,TResult? Function( TooManyRequestsFailure value)?  tooManyRequests,TResult? Function( NetworkFailure value)?  network,TResult? Function( ServerFailure value)?  server,TResult? Function( UnexpectedFailure value)?  unexpected,}){
final _that = this;
switch (_that) {
case InvalidCredentialsFailure() when invalidCredentials != null:
return invalidCredentials(_that);case CpfAlreadyRegisteredFailure() when cpfAlreadyRegistered != null:
return cpfAlreadyRegistered(_that);case WeakPasswordFailure() when weakPassword != null:
return weakPassword(_that);case UserDisabledFailure() when userDisabled != null:
return userDisabled(_that);case TooManyRequestsFailure() when tooManyRequests != null:
return tooManyRequests(_that);case NetworkFailure() when network != null:
return network(_that);case ServerFailure() when server != null:
return server(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  invalidCredentials,TResult Function()?  cpfAlreadyRegistered,TResult Function()?  weakPassword,TResult Function()?  userDisabled,TResult Function()?  tooManyRequests,TResult Function()?  network,TResult Function()?  server,TResult Function()?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InvalidCredentialsFailure() when invalidCredentials != null:
return invalidCredentials();case CpfAlreadyRegisteredFailure() when cpfAlreadyRegistered != null:
return cpfAlreadyRegistered();case WeakPasswordFailure() when weakPassword != null:
return weakPassword();case UserDisabledFailure() when userDisabled != null:
return userDisabled();case TooManyRequestsFailure() when tooManyRequests != null:
return tooManyRequests();case NetworkFailure() when network != null:
return network();case ServerFailure() when server != null:
return server();case UnexpectedFailure() when unexpected != null:
return unexpected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  invalidCredentials,required TResult Function()  cpfAlreadyRegistered,required TResult Function()  weakPassword,required TResult Function()  userDisabled,required TResult Function()  tooManyRequests,required TResult Function()  network,required TResult Function()  server,required TResult Function()  unexpected,}) {final _that = this;
switch (_that) {
case InvalidCredentialsFailure():
return invalidCredentials();case CpfAlreadyRegisteredFailure():
return cpfAlreadyRegistered();case WeakPasswordFailure():
return weakPassword();case UserDisabledFailure():
return userDisabled();case TooManyRequestsFailure():
return tooManyRequests();case NetworkFailure():
return network();case ServerFailure():
return server();case UnexpectedFailure():
return unexpected();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  invalidCredentials,TResult? Function()?  cpfAlreadyRegistered,TResult? Function()?  weakPassword,TResult? Function()?  userDisabled,TResult? Function()?  tooManyRequests,TResult? Function()?  network,TResult? Function()?  server,TResult? Function()?  unexpected,}) {final _that = this;
switch (_that) {
case InvalidCredentialsFailure() when invalidCredentials != null:
return invalidCredentials();case CpfAlreadyRegisteredFailure() when cpfAlreadyRegistered != null:
return cpfAlreadyRegistered();case WeakPasswordFailure() when weakPassword != null:
return weakPassword();case UserDisabledFailure() when userDisabled != null:
return userDisabled();case TooManyRequestsFailure() when tooManyRequests != null:
return tooManyRequests();case NetworkFailure() when network != null:
return network();case ServerFailure() when server != null:
return server();case UnexpectedFailure() when unexpected != null:
return unexpected();case _:
  return null;

}
}

}

/// @nodoc


class InvalidCredentialsFailure implements AuthFailure {
  const InvalidCredentialsFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidCredentialsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.invalidCredentials()';
}


}




/// @nodoc


class CpfAlreadyRegisteredFailure implements AuthFailure {
  const CpfAlreadyRegisteredFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CpfAlreadyRegisteredFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.cpfAlreadyRegistered()';
}


}




/// @nodoc


class WeakPasswordFailure implements AuthFailure {
  const WeakPasswordFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WeakPasswordFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.weakPassword()';
}


}




/// @nodoc


class UserDisabledFailure implements AuthFailure {
  const UserDisabledFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDisabledFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.userDisabled()';
}


}




/// @nodoc


class TooManyRequestsFailure implements AuthFailure {
  const TooManyRequestsFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TooManyRequestsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.tooManyRequests()';
}


}




/// @nodoc


class NetworkFailure implements AuthFailure {
  const NetworkFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.network()';
}


}




/// @nodoc


class ServerFailure implements AuthFailure {
  const ServerFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.server()';
}


}




/// @nodoc


class UnexpectedFailure implements AuthFailure {
  const UnexpectedFailure();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFailure.unexpected()';
}


}




// dart format on
