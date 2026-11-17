import 'package:firebase_auth/firebase_auth.dart';
import 'package:tokio_seguros/core/env/env.dart';
import 'package:tokio_seguros/data/services/auth/auth_service.dart';
import 'package:tokio_seguros/data/services/auth/firebase_auth_service.dart';
import 'package:tokio_seguros/data/services/auth/mock_auth_service.dart';

/// Escolhe o serviço de login no boot (Firebase ou mock) e o deixa acessível
/// fora da injeção do Modular (guards de rota).
abstract class AppAuth {
  static AuthService? _service;

  static AuthService get service =>
      _service ?? (throw StateError('AppAuth.init() não foi chamado.'));

  static void init({AuthService? override}) {
    _service =
        override ??
        (Env.useMockAuth
            ? MockAuthService()
            : FirebaseAuthService(FirebaseAuth.instance));
  }

  static bool get isMock => service is MockAuthService;
}
