class CpfUtils {
  CpfUtils._();

  /// Domínio fictício: o Firebase Auth só aceita e-mail/senha, então o CPF vira
  /// o "usuário" de um e-mail interno (nunca exibido nem usado para envio).
  static const authEmailDomain = 'cpf.tokioseguros.app';

  static String digits(String value) => value.replaceAll(RegExp(r'\D'), '');

  /// Valida os dígitos verificadores (regra da Receita Federal).
  static bool isValid(String value) {
    final cpf = digits(value);

    if (cpf.length != 11) return false;
    // 000.000.000-00, 111.111.111-11... passam no cálculo mas são inválidos.
    if (RegExp(r'^(\d)\1{10}$').hasMatch(cpf)) return false;

    final numbers = cpf.split('').map(int.parse).toList();

    return _checkDigit(numbers.sublist(0, 9)) == numbers[9] &&
        _checkDigit(numbers.sublist(0, 10)) == numbers[10];
  }

  static int _checkDigit(List<int> base) {
    var sum = 0;
    for (var i = 0; i < base.length; i++) {
      sum += base[i] * (base.length + 1 - i);
    }
    final rest = sum % 11;
    return rest < 2 ? 0 : 11 - rest;
  }

  /// "529.982.247-25" → "529.982.247-25"; "52998224725" → idem.
  static String format(String value) {
    final cpf = digits(value);
    if (cpf.length != 11) return value;
    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.'
        '${cpf.substring(6, 9)}-${cpf.substring(9)}';
  }

  static String toAuthEmail(String cpf) => '${digits(cpf)}@$authEmailDomain';

  /// Volta do e-mail interno para o CPF (só dígitos). Nulo se não for um.
  static String? fromAuthEmail(String? email) {
    if (email == null || !email.endsWith('@$authEmailDomain')) return null;
    return email.split('@').first;
  }
}
