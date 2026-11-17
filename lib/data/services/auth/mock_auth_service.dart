import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/data/services/auth/auth_service.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

/// Login em memória (`--dart-define=USE_MOCK_AUTH=true`): sem Firebase, com a
/// conta demo já cadastrada. Os cadastros feitos aqui somem ao fechar o app.
class MockAuthService implements AuthService {
  MockAuthService({this.delay = const Duration(milliseconds: 600)});

  static const demoCpf = '529.982.247-25';
  static const demoPassword = 'tokio123';
  static const demoName = 'Caio Máximo';

  final Duration delay;

  final Map<String, ({UserModel user, String password})> _users = {
    CpfUtils.digits(demoCpf): (
      user: UserModel(
        id: 'demo',
        name: demoName,
        cpf: CpfUtils.digits(demoCpf),
      ),
      password: demoPassword,
    ),
  };

  UserModel? _current;

  @override
  UserModel? get currentUser => _current;

  @override
  Future<UserModel?> restoreSession() async => _current;

  @override
  Future<UserModel> signIn({
    required String cpf,
    required String password,
  }) async {
    await Future<void>.delayed(delay);

    final entry = _users[CpfUtils.digits(cpf)];
    if (entry == null || entry.password != password) {
      throw const AuthFailure.invalidCredentials();
    }
    return _current = entry.user;
  }

  @override
  Future<UserModel> signUp(RegisterParams params) async {
    await Future<void>.delayed(delay);

    final cpf = CpfUtils.digits(params.cpf);
    if (_users.containsKey(cpf)) throw const AuthFailure.cpfAlreadyRegistered();
    if (params.password.length < 6) throw const AuthFailure.weakPassword();

    final user = UserModel(id: 'mock-$cpf', name: params.name.trim(), cpf: cpf);
    _users[cpf] = (user: user, password: params.password);
    return _current = user;
  }

  @override
  Future<void> signOut() async => _current = null;
}
