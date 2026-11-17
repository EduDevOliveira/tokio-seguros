import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
sealed class AuthFailure with _$AuthFailure implements Exception {
  const factory AuthFailure.invalidCredentials() = InvalidCredentialsFailure;

  const factory AuthFailure.cpfAlreadyRegistered() =
      CpfAlreadyRegisteredFailure;

  const factory AuthFailure.weakPassword() = WeakPasswordFailure;

  const factory AuthFailure.userDisabled() = UserDisabledFailure;

  const factory AuthFailure.tooManyRequests() = TooManyRequestsFailure;

  const factory AuthFailure.network() = NetworkFailure;

  const factory AuthFailure.server() = ServerFailure;

  const factory AuthFailure.unexpected() = UnexpectedFailure;
}

abstract class AuthMessageFailure {
  static String map(AuthFailure failure) {
    return switch (failure) {
      InvalidCredentialsFailure() => 'CPF ou senha incorretos.',
      CpfAlreadyRegisteredFailure() =>
        'Este CPF já tem cadastro. Entre com a sua senha.',
      WeakPasswordFailure() => 'Senha fraca. Use pelo menos 6 caracteres.',
      UserDisabledFailure() =>
        'Acesso bloqueado. Fale com a nossa central de atendimento.',
      TooManyRequestsFailure() =>
        'Muitas tentativas. Aguarde um pouco e tente novamente.',
      NetworkFailure() => 'Sem conexão com a internet. Tente novamente.',
      ServerFailure() => 'Serviço indisponível. Tente em instantes.',
      UnexpectedFailure() => 'Erro inesperado. Tente novamente.',
    };
  }
}
