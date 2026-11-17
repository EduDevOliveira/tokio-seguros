import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/data/repositories/policy/policy_repository.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';

class GetContractedPolicies {
  new(this._repository);

  final PolicyRepository _repository;

  Future<ResultDart<List<PolicyModel>, AppFailure>> call({
    required String userId,
  }) async {
    try {
      return Success(await _repository.listContracted(userId));
    } on AppFailure catch (failure) {
      return Failure(failure);
    } catch (_) {
      return const Failure(AppFailure.unexpected());
    }
  }
}
