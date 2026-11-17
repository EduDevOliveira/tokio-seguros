import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_login_model.freezed.dart';

/// Preferência "Lembrar sempre" e o último CPF usado (para preencher o login).
@freezed
abstract class SavedLoginModel with _$SavedLoginModel {
  const factory SavedLoginModel({
    @Default(true) bool remember,
    String? cpf,
  }) = _SavedLoginModel;
}
