import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/sign_out.dart';
import 'package:tokio_seguros/domain/usecases/auth/user_current.dart';

part 'session_bloc.freezed.dart';
part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc(this._userCurrent, this._signOut) : super(const SessionState()) {
    on<SessionVerifyRequested>(_onVerify);
    on<SessionStarted>(_onStarted);
    on<SessionSignOut>(_onSignOut);
  }

  final UserCurrent _userCurrent;
  final SignOut _signOut;

  Future<void> _onVerify(SessionVerifyRequested event, Emitter emit) async {
    emit(state.copyWith(status: .loading));

    final user = await _userCurrent();

    if (user == null) {
      return emit(const SessionState(status: .unauthenticated));
    }
    emit(SessionState(status: .authenticated, user: user));
  }

  void _onStarted(SessionStarted event, Emitter emit) {
    emit(SessionState(status: .authenticated, user: event.user));
  }

  Future<void> _onSignOut(SessionSignOut event, Emitter emit) async {
    await _signOut();
    emit(const SessionState(status: .unauthenticated));
  }
}
