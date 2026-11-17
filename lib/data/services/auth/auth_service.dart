import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

/// Lança [AuthFailure] em qualquer erro.
abstract interface class AuthService {

  UserModel? get currentUser;

  Future<UserModel?> restoreSession();

  Future<UserModel> signIn({required String cpf, required String password});

  Future<UserModel> signUp(RegisterParams params);

  Future<void> signOut();
}
