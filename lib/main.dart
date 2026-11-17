import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:tokio_seguros/app_module.dart';
import 'package:tokio_seguros/app_root.dart';
import 'package:tokio_seguros/core/auth/app_auth.dart';
import 'package:tokio_seguros/core/env/env.dart';
import 'package:tokio_seguros/firebase_options.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Intl.defaultLocale = 'pt_BR';

  // Com auth mockada o app roda sem Firebase (offline).
  if (!Env.useMockAuth) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  AppAuth.init();

  runApp(
    ModularApp(
      module: appModule,
      provide: (s) => s.addStreamable<SessionBloc>(
        SessionBloc.new,
        (v) => v.stream,
        (v) => v.close(),
      ),
      child: const AppRoot(),
    ),
  );
}
