part of 'session_bloc.dart';

enum SessionStatus { initial, loading, authenticated, unauthenticated }

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState({
    @Default(SessionStatus.initial) SessionStatus status,
    UserModel? user,
  }) = _SessionState;
}
