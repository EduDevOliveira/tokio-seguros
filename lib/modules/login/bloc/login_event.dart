part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  /// Carrega o CPF salvo e a preferência "Lembrar sempre".
  const factory LoginEvent.started() = LoginStarted;
  const factory LoginEvent.cpfChanged({required String cpf}) = LoginCpfChanged;
  const factory LoginEvent.passwordChanged({required String password}) =
      LoginPasswordChanged;
  const factory LoginEvent.rememberChanged({required bool remember}) =
      LoginRememberChanged;
  const factory LoginEvent.submitted() = LoginSubmitted;
}
