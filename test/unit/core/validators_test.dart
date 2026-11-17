import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/core/extensions/name_extension.dart';
import 'package:tokio_seguros/core/validators/validators.dart';

void main() {
  group('Validators', () {
    test('compose devolve o primeiro erro', () {
      final validator = Validators.compose([
        Validators.required('obrigatório'),
        Validators.cpf('cpf inválido'),
      ]);

      expect(validator(''), 'obrigatório');
      expect(validator('123'), 'cpf inválido');
      expect(validator('529.982.247-25'), isNull);
    });

    test('fullName exige nome e sobrenome', () {
      final validator = Validators.fullName();

      expect(validator('Caio'), isNotNull);
      expect(validator('  Caio   Máximo '), isNull);
    });

    test('passwordRepeat compara com o valor atual da senha', () {
      var password = '123456';
      final validator = Validators.passwordRepeat(() => password);

      expect(validator('123456'), isNull);
      password = 'outra';
      expect(validator('123456'), isNotNull);
    });

    test('minLength', () {
      expect(Validators.minLength(6)('12345'), 'Mínimo de 6 caracteres');
      expect(Validators.minLength(6)('123456'), isNull);
    });
  });

  group('NameExtension', () {
    test('initials', () {
      expect('Caio Máximo da Silva'.initials, 'CS');
      expect('caio'.initials, 'C');
      expect('  '.initials, '?');
    });

    test('shortName mantém primeiro e último nome', () {
      expect('Caio Máximo da Silva'.shortName, 'Caio Silva');
      expect('Caio Máximo'.shortName, 'Caio Máximo');
    });
  });
}
