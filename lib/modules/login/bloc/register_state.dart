part of 'register_bloc.dart';

enum RegisterStatus { initial, loading, success, failure }

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    @Default('') String name,
    @Default('') String cpf,
    @Default('') String password,
    UserModel? user,
    AuthFailure? failure,
  }) = _RegisterState;
}
