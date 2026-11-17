part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started({required String userId}) = HomeStarted;

  const factory HomeEvent.familyMemberAdded({
    required String name,
    required FamilyRelationship relationship,
  }) = HomeFamilyMemberAdded;

  const factory HomeEvent.familyMemberRemoved({required String memberId}) =
      HomeFamilyMemberRemoved;
}
