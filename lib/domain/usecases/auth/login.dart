import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';

part 'login.freezed.dart';

class Login {
  new(this._repository);

  final AuthRepository _repository;

  Future<ResultDart<UserModel, AuthFailure>> call({
    required LoginParams params,
  }) async {
    try {
      final user = await _repository.signIn(
        cpf: params.cpf,
        password: params.password,
      );

      // Sem "Lembrar sempre", o CPF não fica salvo e a sessão não sobrevive
      // a reabrir o app (ver UserCurrent).
      await _repository.saveLogin(
        SavedLoginModel(
          remember: params.remember,
          cpf: params.remember ? CpfUtils.digits(params.cpf) : null,
        ),
      );

      return Success(user);
    } on AuthFailure catch (failure) {
      return Failure(failure);
    } catch (_) {
      return const Failure(AuthFailure.unexpected());
    }
  }
}

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String cpf,
    required String password,
    @Default(true) bool remember,
  }) = _LoginParams;
}
