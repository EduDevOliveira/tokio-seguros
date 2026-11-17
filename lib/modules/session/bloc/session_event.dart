part of 'session_bloc.dart';

@freezed
abstract class SessionEvent with _$SessionEvent {
  /// Abertura do app: restaura a sessão salva.
  const factory SessionEvent.verifyRequested() = SessionVerifyRequested;

  /// Login ou cadastro concluído.
  const factory SessionEvent.started({required UserModel user}) =
      SessionStarted;

  const factory SessionEvent.signOut() = SessionSignOut;
}
