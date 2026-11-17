import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';

class SignOut {
  new(this._repository);

  final AuthRepository _repository;

  /// Nunca falha para quem chama: a pessoa pediu para sair, então a sessão
  /// local é descartada mesmo se o SDK der erro.
  Future<void> call() async {
    try {
      await _repository.signOut();
    } catch (_) {}
  }
}
