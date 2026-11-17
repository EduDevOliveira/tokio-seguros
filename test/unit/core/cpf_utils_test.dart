import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';

void main() {
  group('CpfUtils.isValid', () {
    test('aceita CPF válido com e sem máscara', () {
      expect(CpfUtils.isValid('529.982.247-25'), isTrue);
      expect(CpfUtils.isValid('52998224725'), isTrue);
      expect(CpfUtils.isValid('111.444.777-35'), isTrue);
    });

    test('recusa dígito verificador errado', () {
      expect(CpfUtils.isValid('529.982.247-26'), isFalse);
      expect(CpfUtils.isValid('529.982.247-15'), isFalse);
    });

    test('recusa sequências repetidas (passam no cálculo)', () {
      for (var d = 0; d <= 9; d++) {
        expect(CpfUtils.isValid('$d' * 11), isFalse, reason: '$d' * 11);
      }
    });

    test('recusa tamanho diferente de 11', () {
      expect(CpfUtils.isValid(''), isFalse);
      expect(CpfUtils.isValid('5299822472'), isFalse);
      expect(CpfUtils.isValid('529982247250'), isFalse);
    });
  });

  test('format aplica a máscara só quando tem 11 dígitos', () {
    expect(CpfUtils.format('52998224725'), '529.982.247-25');
    expect(CpfUtils.format('5299'), '5299');
  });

  group('e-mail interno do Firebase', () {
    test('ida e volta preservam o CPF', () {
      final email = CpfUtils.toAuthEmail('529.982.247-25');

      expect(email, '52998224725@${CpfUtils.authEmailDomain}');
      expect(CpfUtils.fromAuthEmail(email), '52998224725');
    });

    test('e-mail de outro domínio não vira CPF', () {
      expect(CpfUtils.fromAuthEmail('ze@gmail.com'), isNull);
      expect(CpfUtils.fromAuthEmail(null), isNull);
    });
  });
}
