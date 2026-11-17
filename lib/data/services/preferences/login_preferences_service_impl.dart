import 'package:shared_preferences/shared_preferences.dart';
import 'package:tokio_seguros/data/services/preferences/login_preferences_service.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';

class LoginPreferencesServiceImpl implements LoginPreferencesService {
  static const _rememberKey = 'login.remember';
  static const _cpfKey = 'login.cpf';

  final _prefs = SharedPreferencesAsync();

  @override
  Future<SavedLoginModel> read() async {
    return SavedLoginModel(
      remember: await _prefs.getBool(_rememberKey) ?? true,
      cpf: await _prefs.getString(_cpfKey),
    );
  }

  @override
  Future<void> save(SavedLoginModel login) async {
    await _prefs.setBool(_rememberKey, login.remember);
    final cpf = login.cpf;
    if (cpf == null) {
      await _prefs.remove(_cpfKey);
    } else {
      await _prefs.setString(_cpfKey, cpf);
    }
  }
}
