import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

/// Falhas fora do login (dados locais, serviços do app).
@freezed
sealed class AppFailure with _$AppFailure implements Exception {
  const factory AppFailure.storage({
    @Default('Não foi possível salvar os dados neste aparelho.') String message,
  }) = StorageFailure;

  const factory AppFailure.unexpected({
    @Default('Erro inesperado. Tente novamente.') String message,
  }) = UnexpectedAppFailure;
}
