part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default('') String cpf,
    @Default('') String password,
    @Default(true) bool remember,

    /// Preferências já lidas: a página preenche o CPF uma única vez.
    @Default(false) bool savedLoaded,
    UserModel? user,
    AuthFailure? failure,
  }) = _LoginState;
}
