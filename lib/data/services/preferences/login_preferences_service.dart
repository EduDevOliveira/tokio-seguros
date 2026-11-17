import 'package:tokio_seguros/domain/models/saved_login_model.dart';

abstract interface class LoginPreferencesService {
  Future<SavedLoginModel> read();

  Future<void> save(SavedLoginModel login);
}
