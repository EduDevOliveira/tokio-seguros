import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._register) : super(const RegisterState()) {
    on<RegisterNameChanged>(
      (e, emit) => emit(state.copyWith(name: e.name)),
    );
    on<RegisterCpfChanged>(
      (e, emit) => emit(state.copyWith(cpf: e.cpf)),
    );
    on<RegisterPasswordChanged>(
      (e, emit) => emit(state.copyWith(password: e.password)),
    );
    on<RegisterSubmitted>(_onSubmitted);
  }

  final Register _register;

  Future<void> _onSubmitted(RegisterSubmitted event, Emitter emit) async {
    if (state.status == .loading) return;
    emit(state.copyWith(status: .loading, failure: null));

    final result = await _register(
      params: RegisterParams(
        name: state.name,
        cpf: state.cpf,
        password: state.password,
      ),
    );

    result.fold(
      (user) => emit(state.copyWith(status: .success, user: user)),
      (failure) => emit(state.copyWith(status: .failure, failure: failure)),
    );
  }
}
