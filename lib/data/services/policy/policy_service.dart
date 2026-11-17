import 'package:tokio_seguros/domain/models/policy_model.dart';

/// Lança [AppFailure] em qualquer erro.
abstract interface class PolicyService {
  Future<List<PolicyModel>> listContracted(String userId);
}
