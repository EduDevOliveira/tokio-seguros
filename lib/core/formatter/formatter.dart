import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formatter {
  Formatter._();

  static MaskTextInputFormatter cpf([String? initial]) {
    return MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {'#': RegExp(r'\d')},
      initialText: initial,
    );
  }
}
