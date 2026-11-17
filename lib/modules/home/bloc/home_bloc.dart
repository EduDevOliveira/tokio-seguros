import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';
import 'package:tokio_seguros/domain/usecases/family/add_family_member.dart';
import 'package:tokio_seguros/domain/usecases/family/get_family_members.dart';
import 'package:tokio_seguros/domain/usecases/family/remove_family_member.dart';
import 'package:tokio_seguros/domain/usecases/policy/get_contracted_policies.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._getFamilyMembers,
    this._addFamilyMember,
    this._removeFamilyMember,
    this._getContractedPolicies,
  ) : super(const HomeState()) {
    on<HomeStarted>(_onStarted);
    on<HomeFamilyMemberAdded>(_onMemberAdded);
    on<HomeFamilyMemberRemoved>(_onMemberRemoved);
  }

  final GetFamilyMembers _getFamilyMembers;
  final AddFamilyMember _addFamilyMember;
  final RemoveFamilyMember _removeFamilyMember;
  final GetContractedPolicies _getContractedPolicies;

  Future<void> _onStarted(HomeStarted event, Emitter emit) async {
    emit(state.copyWith(status: .loading, userId: event.userId, failure: null));

    final (family, policies) = await (
      _getFamilyMembers(userId: event.userId),
      _getContractedPolicies(userId: event.userId),
    ).wait;

    final failure = family.exceptionOrNull() ?? policies.exceptionOrNull();
    if (failure != null) {
      return emit(state.copyWith(status: .failure, failure: failure));
    }

    emit(
      state.copyWith(
        status: .success,
        family: family.getOrThrow(),
        policies: policies.getOrThrow(),
      ),
    );
  }

  Future<void> _onMemberAdded(HomeFamilyMemberAdded event, Emitter emit) async {
    final userId = state.userId;
    if (userId == null || state.familyStatus == .saving) return;
    emit(state.copyWith(familyStatus: .saving, failure: null));

    final result = await _addFamilyMember(
      params: AddFamilyMemberParams(
        userId: userId,
        name: event.name,
        relationship: event.relationship,
      ),
    );

    result.fold(
      (family) => emit(state.copyWith(familyStatus: .added, family: family)),
      (failure) =>
          emit(state.copyWith(familyStatus: .failure, failure: failure)),
    );
  }

  Future<void> _onMemberRemoved(
    HomeFamilyMemberRemoved event,
    Emitter emit,
  ) async {
    final userId = state.userId;
    if (userId == null || state.familyStatus == .saving) return;
    emit(state.copyWith(familyStatus: .saving, failure: null));

    final result = await _removeFamilyMember(
      userId: userId,
      memberId: event.memberId,
    );

    result.fold(
      (family) => emit(state.copyWith(familyStatus: .removed, family: family)),
      (failure) =>
          emit(state.copyWith(familyStatus: .failure, failure: failure)),
    );
  }
}
