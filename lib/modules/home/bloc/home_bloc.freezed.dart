// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeStarted value)?  started,TResult Function( HomeFamilyMemberAdded value)?  familyMemberAdded,TResult Function( HomeFamilyMemberRemoved value)?  familyMemberRemoved,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeFamilyMemberAdded() when familyMemberAdded != null:
return familyMemberAdded(_that);case HomeFamilyMemberRemoved() when familyMemberRemoved != null:
return familyMemberRemoved(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeStarted value)  started,required TResult Function( HomeFamilyMemberAdded value)  familyMemberAdded,required TResult Function( HomeFamilyMemberRemoved value)  familyMemberRemoved,}){
final _that = this;
switch (_that) {
case HomeStarted():
return started(_that);case HomeFamilyMemberAdded():
return familyMemberAdded(_that);case HomeFamilyMemberRemoved():
return familyMemberRemoved(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeStarted value)?  started,TResult? Function( HomeFamilyMemberAdded value)?  familyMemberAdded,TResult? Function( HomeFamilyMemberRemoved value)?  familyMemberRemoved,}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeFamilyMemberAdded() when familyMemberAdded != null:
return familyMemberAdded(_that);case HomeFamilyMemberRemoved() when familyMemberRemoved != null:
return familyMemberRemoved(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  started,TResult Function( String name,  FamilyRelationship relationship)?  familyMemberAdded,TResult Function( String memberId)?  familyMemberRemoved,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that.userId);case HomeFamilyMemberAdded() when familyMemberAdded != null:
return familyMemberAdded(_that.name,_that.relationship);case HomeFamilyMemberRemoved() when familyMemberRemoved != null:
return familyMemberRemoved(_that.memberId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  started,required TResult Function( String name,  FamilyRelationship relationship)  familyMemberAdded,required TResult Function( String memberId)  familyMemberRemoved,}) {final _that = this;
switch (_that) {
case HomeStarted():
return started(_that.userId);case HomeFamilyMemberAdded():
return familyMemberAdded(_that.name,_that.relationship);case HomeFamilyMemberRemoved():
return familyMemberRemoved(_that.memberId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  started,TResult? Function( String name,  FamilyRelationship relationship)?  familyMemberAdded,TResult? Function( String memberId)?  familyMemberRemoved,}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that.userId);case HomeFamilyMemberAdded() when familyMemberAdded != null:
return familyMemberAdded(_that.name,_that.relationship);case HomeFamilyMemberRemoved() when familyMemberRemoved != null:
return familyMemberRemoved(_that.memberId);case _:
  return null;

}
}

}

/// @nodoc


class HomeStarted implements HomeEvent {
  const HomeStarted({required this.userId});
  

 final  String userId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStartedCopyWith<HomeStarted> get copyWith => _$HomeStartedCopyWithImpl<HomeStarted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStarted&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userId);
}

@override
String toString() {
    return 'HomeEvent.started(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $HomeStartedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeStartedCopyWith(HomeStarted value, $Res Function(HomeStarted) _then) = _$HomeStartedCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$HomeStartedCopyWithImpl<$Res>
    implements $HomeStartedCopyWith<$Res> {
  _$HomeStartedCopyWithImpl(this._self, this._then);

  final HomeStarted _self;
  final $Res Function(HomeStarted) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(HomeStarted(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeFamilyMemberAdded implements HomeEvent {
  const HomeFamilyMemberAdded({required this.name, required this.relationship});
  

 final  String name;
 final  FamilyRelationship relationship;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFamilyMemberAddedCopyWith<HomeFamilyMemberAdded> get copyWith => _$HomeFamilyMemberAddedCopyWithImpl<HomeFamilyMemberAdded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFamilyMemberAdded&&(identical(other.name, name) || other.name == name)&&(identical(other.relationship, relationship) || other.relationship == relationship));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,relationship);
}

@override
String toString() {
    return 'HomeEvent.familyMemberAdded(name: $name, relationship: $relationship)';
}


}

/// @nodoc
abstract mixin class $HomeFamilyMemberAddedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeFamilyMemberAddedCopyWith(HomeFamilyMemberAdded value, $Res Function(HomeFamilyMemberAdded) _then) = _$HomeFamilyMemberAddedCopyWithImpl;
@useResult
$Res call({
 String name, FamilyRelationship relationship
});




}
/// @nodoc
class _$HomeFamilyMemberAddedCopyWithImpl<$Res>
    implements $HomeFamilyMemberAddedCopyWith<$Res> {
  _$HomeFamilyMemberAddedCopyWithImpl(this._self, this._then);

  final HomeFamilyMemberAdded _self;
  final $Res Function(HomeFamilyMemberAdded) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? relationship = null,}) {
  return _then(HomeFamilyMemberAdded(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as FamilyRelationship,
  ));
}


}

/// @nodoc


class HomeFamilyMemberRemoved implements HomeEvent {
  const HomeFamilyMemberRemoved({required this.memberId});
  

 final  String memberId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFamilyMemberRemovedCopyWith<HomeFamilyMemberRemoved> get copyWith => _$HomeFamilyMemberRemovedCopyWithImpl<HomeFamilyMemberRemoved>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFamilyMemberRemoved&&(identical(other.memberId, memberId) || other.memberId == memberId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,memberId);
}

@override
String toString() {
    return 'HomeEvent.familyMemberRemoved(memberId: $memberId)';
}


}

/// @nodoc
abstract mixin class $HomeFamilyMemberRemovedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeFamilyMemberRemovedCopyWith(HomeFamilyMemberRemoved value, $Res Function(HomeFamilyMemberRemoved) _then) = _$HomeFamilyMemberRemovedCopyWithImpl;
@useResult
$Res call({
 String memberId
});




}
/// @nodoc
class _$HomeFamilyMemberRemovedCopyWithImpl<$Res>
    implements $HomeFamilyMemberRemovedCopyWith<$Res> {
  _$HomeFamilyMemberRemovedCopyWithImpl(this._self, this._then);

  final HomeFamilyMemberRemoved _self;
  final $Res Function(HomeFamilyMemberRemoved) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,}) {
  return _then(HomeFamilyMemberRemoved(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 HomeStatus get status; FamilySubmitStatus get familyStatus; String? get userId; List<FamilyMemberModel> get family; List<PolicyModel> get policies; AppFailure? get failure;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.familyStatus, _this.familyStatus) || other.familyStatus == _this.familyStatus)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&const DeepCollectionEquality().equals(other.family, _this.family)&&const DeepCollectionEquality().equals(other.policies, _this.policies)&&(identical(other.failure, _this.failure) || other.failure == _this.failure));
}


@override
int get hashCode {
  final _this = this as HomeState;
  return Object.hash(runtimeType,_this.status,_this.familyStatus,_this.userId,const DeepCollectionEquality().hash(_this.family),const DeepCollectionEquality().hash(_this.policies),_this.failure);
}

@override
String toString() {
  final _this = this as HomeState;
  return 'HomeState(status: ${_this.status}, familyStatus: ${_this.familyStatus}, userId: ${_this.userId}, family: ${_this.family}, policies: ${_this.policies}, failure: ${_this.failure})';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus status, FamilySubmitStatus familyStatus, String? userId, List<FamilyMemberModel> family, List<PolicyModel> policies, AppFailure? failure
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? familyStatus = null,Object? userId = freezed,Object? family = null,Object? policies = null,Object? failure = freezed,}) {
  return _then(HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,familyStatus: null == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as FamilySubmitStatus,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberModel>,policies: null == policies ? _self.policies : policies // ignore: cast_nullable_to_non_nullable
as List<PolicyModel>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeStatus status,  FamilySubmitStatus familyStatus,  String? userId,  List<FamilyMemberModel> family,  List<PolicyModel> policies,  AppFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.familyStatus,_that.userId,_that.family,_that.policies,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeStatus status,  FamilySubmitStatus familyStatus,  String? userId,  List<FamilyMemberModel> family,  List<PolicyModel> policies,  AppFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.familyStatus,_that.userId,_that.family,_that.policies,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeStatus status,  FamilySubmitStatus familyStatus,  String? userId,  List<FamilyMemberModel> family,  List<PolicyModel> policies,  AppFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.familyStatus,_that.userId,_that.family,_that.policies,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.status = HomeStatus.initial, this.familyStatus = FamilySubmitStatus.initial, this.userId,  List<FamilyMemberModel> family = const <FamilyMemberModel>[],  List<PolicyModel> policies = const <PolicyModel>[], this.failure}): _family = family,_policies = policies;
  

@override@JsonKey() final  HomeStatus status;
@override@JsonKey() final  FamilySubmitStatus familyStatus;
@override final  String? userId;
 final  List<FamilyMemberModel> _family;
@override@JsonKey() List<FamilyMemberModel> get family {
  if (_family is EqualUnmodifiableListView) return _family;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_family);
}

 final  List<PolicyModel> _policies;
@override@JsonKey() List<PolicyModel> get policies {
  if (_policies is EqualUnmodifiableListView) return _policies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_policies);
}

@override final  AppFailure? failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.familyStatus, familyStatus) || other.familyStatus == familyStatus)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.family, _family)&&const DeepCollectionEquality().equals(other.policies, _policies)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,familyStatus,userId,const DeepCollectionEquality().hash(_family),const DeepCollectionEquality().hash(_policies),failure);
}

@override
String toString() {
    return 'HomeState(status: $status, familyStatus: $familyStatus, userId: $userId, family: $family, policies: $policies, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus status, FamilySubmitStatus familyStatus, String? userId, List<FamilyMemberModel> family, List<PolicyModel> policies, AppFailure? failure
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? familyStatus = null,Object? userId = freezed,Object? family = null,Object? policies = null,Object? failure = freezed,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,familyStatus: null == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as FamilySubmitStatus,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,family: null == family ? _self._family : family // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberModel>,policies: null == policies ? _self._policies : policies // ignore: cast_nullable_to_non_nullable
as List<PolicyModel>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
