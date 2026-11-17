part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

enum FamilySubmitStatus { initial, saving, added, removed, failure }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default(FamilySubmitStatus.initial) FamilySubmitStatus familyStatus,
    String? userId,
    @Default(<FamilyMemberModel>[]) List<FamilyMemberModel> family,
    @Default(<PolicyModel>[]) List<PolicyModel> policies,
    AppFailure? failure,
  }) = _HomeState;
}
