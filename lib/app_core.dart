import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/core/auth/app_auth.dart';
import 'package:tokio_seguros/data/repositories/auth/auth_repository.dart';
import 'package:tokio_seguros/data/services/auth/auth_service.dart';
import 'package:tokio_seguros/data/services/preferences/login_preferences_service.dart';
import 'package:tokio_seguros/data/services/preferences/login_preferences_service_impl.dart';
import 'package:tokio_seguros/domain/usecases/auth/sign_out.dart';
import 'package:tokio_seguros/domain/usecases/auth/user_current.dart';

/// Binds globais: login e sessão (usados pelo SessionBloc, provido no main).
final coreModule = createModule(
  register: (c) => c

    ..addLazySingleton<AuthService>(() => AppAuth.service)
    ..addLazySingleton<LoginPreferencesService>(
      LoginPreferencesServiceImpl.new,
    )
    ..addLazySingleton(AuthRepository.new)
    ..addLazySingleton(UserCurrent.new)
    ..addLazySingleton(SignOut.new),
);
