import 'package:firebase_auth/firebase_auth.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';

/// Converte os códigos do Firebase Auth nas falhas do app.
///
/// Desde 2023 o Firebase devolve `invalid-credential` tanto para senha errada
/// quanto para usuário inexistente (proteção contra enumeração), por isso os
/// três códigos caem na mesma mensagem.
abstract class FirebaseAuthFailureMapper {
  static AuthFailure map(FirebaseAuthException exception) {
    return switch (exception.code) {
      'invalid-credential' ||
      'INVALID_LOGIN_CREDENTIALS' ||
      'wrong-password' ||
      'user-not-found' ||
      'invalid-email' => const AuthFailure.invalidCredentials(),
      'email-already-in-use' => const AuthFailure.cpfAlreadyRegistered(),
      'weak-password' => const AuthFailure.weakPassword(),
      'user-disabled' => const AuthFailure.userDisabled(),
      'too-many-requests' => const AuthFailure.tooManyRequests(),
      'network-request-failed' => const AuthFailure.network(),
      'internal-error' || 'operation-not-allowed' => const AuthFailure.server(),
      _ => const AuthFailure.unexpected(),
    };
  }
}
