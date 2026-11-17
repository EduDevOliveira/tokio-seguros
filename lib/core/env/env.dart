/// Variáveis de build (`--dart-define` / `--dart-define-from-file`).
abstract class Env {
  /// `true` troca o Firebase pelo [MockAuthService]: o app roda offline, com a
  /// conta demo. Útil para testar sem internet ou sem projeto Firebase.
  static const bool useMockAuth = bool.fromEnvironment('USE_MOCK_AUTH');
}
