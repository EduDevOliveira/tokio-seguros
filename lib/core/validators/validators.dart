import 'package:tokio_seguros/core/utils/cpf_utils.dart';

typedef Validator = String? Function(String? value);

class Validators {
  Validators._();

  /// Combina validadores; devolve o primeiro erro encontrado.
  static Validator compose(List<Validator> validators) {
    return (value) {
      for (final validator in validators) {
        final error = validator(value);
        if (error != null) return error;
      }
      return null;
    };
  }

  static Validator required([String message = 'Campo obrigatório']) {
    return (value) => (value == null || value.trim().isEmpty) ? message : null;
  }

  static Validator cpf([String message = 'CPF inválido']) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      return CpfUtils.isValid(value) ? null : message;
    };
  }

  /// Nome e sobrenome.
  static Validator fullName([String message = 'Informe nome e sobrenome']) {
    return (value) {
      if (value == null || value.trim().isEmpty) return null;
      final parts = value.trim().split(RegExp(r'\s+'));
      return parts.length >= 2 ? null : message;
    };
  }

  static Validator minLength(int length, [String? message]) {
    return (value) {
      if (value == null || value.length < length) {
        return message ?? 'Mínimo de $length caracteres';
      }
      return null;
    };
  }

  static Validator passwordRepeat(
    String Function() password, [
    String message = 'As senhas não coincidem',
  ]) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      return value == password() ? null : message;
    };
  }
}
