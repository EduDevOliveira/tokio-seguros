part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nameChanged({required String name}) =
      RegisterNameChanged;
  const factory RegisterEvent.cpfChanged({required String cpf}) =
      RegisterCpfChanged;
  const factory RegisterEvent.passwordChanged({required String password}) =
      RegisterPasswordChanged;
  const factory RegisterEvent.submitted() = RegisterSubmitted;
}
