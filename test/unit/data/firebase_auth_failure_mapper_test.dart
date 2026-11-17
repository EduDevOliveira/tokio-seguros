import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/app/errors/auth/firebase_auth_failure_mapper.dart';

void main() {
  AuthFailure map(String code) =>
      FirebaseAuthFailureMapper.map(FirebaseAuthException(code: code));

  test('senha errada e usuário inexistente viram a mesma falha', () {
    for (final code in [
      'invalid-credential',
      'wrong-password',
      'user-not-found',
      'INVALID_LOGIN_CREDENTIALS',
    ]) {
      expect(map(code), const AuthFailure.invalidCredentials(), reason: code);
    }
  });

  test('mapeia os demais códigos conhecidos', () {
    expect(
      map('email-already-in-use'),
      const AuthFailure.cpfAlreadyRegistered(),
    );
    expect(map('weak-password'), const AuthFailure.weakPassword());
    expect(map('user-disabled'), const AuthFailure.userDisabled());
    expect(map('too-many-requests'), const AuthFailure.tooManyRequests());
    expect(map('network-request-failed'), const AuthFailure.network());
    expect(map('operation-not-allowed'), const AuthFailure.server());
  });

  test('código desconhecido vira unexpected', () {
    expect(map('qualquer-coisa'), const AuthFailure.unexpected());
  });

  test('toda falha tem mensagem em português', () {
    const failures = [
      AuthFailure.invalidCredentials(),
      AuthFailure.cpfAlreadyRegistered(),
      AuthFailure.weakPassword(),
      AuthFailure.userDisabled(),
      AuthFailure.tooManyRequests(),
      AuthFailure.network(),
      AuthFailure.server(),
      AuthFailure.unexpected(),
    ];
    for (final failure in failures) {
      expect(AuthMessageFailure.map(failure), isNotEmpty);
    }
  });
}
