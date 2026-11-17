import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/modules/session/pages/splash_page.dart';

final sessionModule = createModule(
  register: (c) {
    c.route(
      Routes.splash,
      child: (context, state) => const SplashPage(),
    );
  },
);
