import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';

class GetSavedLogin {
  new(this._repository);

  final AuthRepository _repository;

  /// Sem preferência salva (ou erro ao ler) volta o padrão: lembrar marcado.
  Future<SavedLoginModel> call() async {
    try {
      return await _repository.readSavedLogin();
    } catch (_) {
      return const SavedLoginModel();
    }
  }
}
