import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app_core.dart';
import 'package:tokio_seguros/modules/login/login_module.dart';
import 'package:tokio_seguros/modules/main_shell/main_shell_module.dart';
import 'package:tokio_seguros/modules/session/session_module.dart';

final appModule = createModule(
  register: (c) {
    c
      ..module(coreModule)
      ..module(sessionModule)
      ..module(loginModule)
      ..module(mainShellModule);
  },
);
