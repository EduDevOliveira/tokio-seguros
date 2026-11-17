import 'package:tokio_seguros/data/services/auth/auth_service.dart';
import 'package:tokio_seguros/data/services/preferences/login_preferences_service.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

class AuthRepository {
  new(this._service, this._preferences);

  final AuthService _service;
  final LoginPreferencesService _preferences;

  UserModel? get currentUser => _service.currentUser;

  Future<UserModel?> restoreSession() => _service.restoreSession();

  Future<UserModel> signIn({required String cpf, required String password}) {
    return _service.signIn(cpf: cpf, password: password);
  }

  Future<UserModel> signUp(RegisterParams params) => _service.signUp(params);

  Future<void> signOut() => _service.signOut();

  Future<SavedLoginModel> readSavedLogin() => _preferences.read();

  Future<void> saveLogin(SavedLoginModel login) => _preferences.save(login);
}
