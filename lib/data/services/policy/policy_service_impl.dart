import 'package:tokio_seguros/data/services/policy/policy_service.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';

/// O desafio não tem backend de apólices: nenhum usuário tem seguro
/// contratado. Trocar por uma chamada HTTP aqui não muda as outras camadas.
class PolicyServiceImpl implements PolicyService {
  @override
  Future<List<PolicyModel>> listContracted(String userId) async => const [];
}
