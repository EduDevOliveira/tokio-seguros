import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/get_saved_login.dart';
import 'package:tokio_seguros/domain/usecases/auth/login.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._login, this._getSavedLogin) : super(const LoginState()) {
    on<LoginStarted>(_onStarted);
    on<LoginCpfChanged>(_onCpfChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginRememberChanged>(_onRememberChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final Login _login;
  final GetSavedLogin _getSavedLogin;

  Future<void> _onStarted(LoginStarted event, Emitter emit) async {
    final saved = await _getSavedLogin();
    final cpf = saved.cpf;

    emit(
      state.copyWith(
        cpf: state.cpf.isEmpty && cpf != null
            ? CpfUtils.format(cpf)
            : state.cpf,
        remember: saved.remember,
        savedLoaded: true,
      ),
    );
  }

  void _onCpfChanged(LoginCpfChanged event, Emitter emit) {
    emit(state.copyWith(cpf: event.cpf));
  }

  void _onPasswordChanged(LoginPasswordChanged event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onRememberChanged(LoginRememberChanged event, Emitter emit) {
    emit(state.copyWith(remember: event.remember));
  }

  Future<void> _onSubmitted(LoginSubmitted event, Emitter emit) async {
    if (state.status == .loading) return;
    emit(state.copyWith(status: .loading, failure: null));

    final result = await _login(
      params: LoginParams(
        cpf: state.cpf,
        password: state.password,
        remember: state.remember,
      ),
    );

    result.fold(
      (user) => emit(state.copyWith(status: .success, user: user)),
      (failure) => emit(state.copyWith(status: .failure, failure: failure)),
    );
  }
}
