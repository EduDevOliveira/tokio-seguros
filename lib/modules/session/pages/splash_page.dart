import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    hide SelectContext, ReadContext, WatchContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/app_brand.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<SessionBloc>().add(const SessionVerifyRequested()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SessionBloc, SessionState>(
        bloc: context.read<SessionBloc>(),
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          switch (state.status) {
            case .authenticated:
              context.navigate(Routes.mainShell);
            case .unauthenticated:
              context.navigate(Routes.login);
            case .initial || .loading:
              break;
          }
        },
        child: const Center(
          child: Column(
            mainAxisSize: .min,
            spacing: AppSpacing.xl,
            children: [
              AppBrand(height: 64),
              SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(strokeWidth: 2.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
