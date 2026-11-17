import 'package:firebase_auth/firebase_auth.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/app/errors/auth/firebase_auth_failure_mapper.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/data/services/auth/auth_service.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

class FirebaseAuthService implements AuthService {
  new(this._auth);

  final FirebaseAuth _auth;

  @override
  UserModel? get currentUser => _toModel(_auth.currentUser);

  @override
  Future<UserModel?> restoreSession() async {
    final user = await _auth.authStateChanges().first;
    return _toModel(user);
  }

  @override
  Future<UserModel> signIn({
    required String cpf,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: CpfUtils.toAuthEmail(cpf),
        password: password,
      );
      return _toModel(credential.user) ??
          (throw const AuthFailure.unexpected());
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthFailureMapper.map(e);
    }
  }

  @override
  Future<UserModel> signUp(RegisterParams params) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: CpfUtils.toAuthEmail(params.cpf),
        password: params.password,
      );
      final user = credential.user;
      if (user == null) throw const AuthFailure.unexpected();

      await user.updateDisplayName(params.name.trim());
      await user.reload();

      return _toModel(_auth.currentUser ?? user)!;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthFailureMapper.map(e);
    }
  }

  @override
  Future<void> signOut() => _auth.signOut();

  UserModel? _toModel(User? user) {
    if (user == null) return null;
    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      cpf: CpfUtils.fromAuthEmail(user.email) ?? '',
      photoUrl: user.photoURL,
    );
  }
}
