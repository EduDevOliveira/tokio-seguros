import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

class GetFamilyMembers {
  new(this._repository);

  final FamilyRepository _repository;

  Future<ResultDart<List<FamilyMemberModel>, AppFailure>> call({
    required String userId,
  }) async {
    try {
      return Success(await _repository.list(userId));
    } on AppFailure catch (failure) {
      return Failure(failure);
    }
  }
}
