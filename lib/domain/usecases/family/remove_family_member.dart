import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

class RemoveFamilyMember {
  new(this._repository);

  final FamilyRepository _repository;

  /// Devolve a lista atualizada.
  Future<ResultDart<List<FamilyMemberModel>, AppFailure>> call({
    required String userId,
    required String memberId,
  }) async {
    try {
      return Success(await _repository.remove(userId, memberId));
    } on AppFailure catch (failure) {
      return Failure(failure);
    }
  }
}
