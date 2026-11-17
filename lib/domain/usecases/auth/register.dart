import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';

part 'register.freezed.dart';

class Register {
  new(this._repository);

  final AuthRepository _repository;

  Future<ResultDart<UserModel, AuthFailure>> call({
    required RegisterParams params,
  }) async {
    try {
      final user = await _repository.signUp(params);

      // Quem acabou de se cadastrar entra lembrado (mesmo padrão do login).
      await _repository.saveLogin(
        SavedLoginModel(cpf: CpfUtils.digits(params.cpf)),
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
abstract class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String name,
    required String cpf,
    required String password,
  }) = _RegisterParams;
}
