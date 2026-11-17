import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

part 'add_family_member.freezed.dart';

class AddFamilyMember {
  AddFamilyMember(this._repository, {DateTime Function()? clock})
    : _clock = clock ?? DateTime.now;

  final FamilyRepository _repository;
  final DateTime Function() _clock;

  /// Devolve a lista atualizada.
  Future<ResultDart<List<FamilyMemberModel>, AppFailure>> call({
    required AddFamilyMemberParams params,
  }) async {
    final now = _clock();
    final member = FamilyMemberModel(
      id: now.microsecondsSinceEpoch.toRadixString(36),
      name: params.name.trim(),
      relationship: params.relationship,
      createdAt: now,
    );

    try {
      return Success(await _repository.add(params.userId, member));
    } on AppFailure catch (failure) {
      return Failure(failure);
    }
  }
}

@freezed
abstract class AddFamilyMemberParams with _$AddFamilyMemberParams {
  const factory AddFamilyMemberParams({
    required String userId,
    required String name,
    required FamilyRelationship relationship,
  }) = _AddFamilyMemberParams;
}
