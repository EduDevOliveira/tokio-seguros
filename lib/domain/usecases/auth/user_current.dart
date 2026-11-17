import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';

class UserCurrent {
  new(this._repository);

  final AuthRepository _repository;

  /// Sessão salva ao abrir o app. Se a pessoa entrou sem "Lembrar sempre",
  /// encerra a sessão e pede o login de novo.
  Future<UserModel?> call() async {
    try {
      final user = await _repository.restoreSession();
      if (user == null) return null;

      final saved = await _repository.readSavedLogin();
      if (!saved.remember) {
        await _repository.signOut();
        return null;
      }
      return user;
    } catch (_) {
      return null;
    }
  }
}
