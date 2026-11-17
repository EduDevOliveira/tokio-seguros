import 'package:tokio_seguros/data/services/policy/policy_service.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';

class PolicyRepository {
  new(this._service);

  final PolicyService _service;

  Future<List<PolicyModel>> listContracted(String userId) {
    return _service.listContracted(userId);
  }
}
