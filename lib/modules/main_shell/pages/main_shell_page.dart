import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    hide SelectContext, ReadContext, WatchContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/enums/main_menu.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/modules/main_shell/widgets/app_drawer.dart';
import 'package:tokio_seguros/modules/main_shell/widgets/shell_app_bar.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  final _outletKey = GlobalKey<RouterOutletState>();

  bool get _isHome {
    final path = context.routeState(listen: false).uri.path;
    return path == Routes.mainShell || path == '${Routes.mainShell}/';
  }

  void _openMenu(MainMenu item) {
    _outletKey.currentState?.navigate(
      item == .home ? Routes.mainShell : Routes.sectionOf(item.slug),
    );
  }

  void _onBack() {
    final outlet = _outletKey.currentState;
    if (outlet != null && outlet.canPop) return outlet.pop();
    if (!_isHome) return _openMenu(.home);
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionBloc, SessionState>(
      bloc: context.read<SessionBloc>(),
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == .unauthenticated) context.navigate(Routes.login);
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) _onBack();
        },
        child: Scaffold(
          appBar: const ShellAppBar(),
          drawer: AppDrawer(onSelected: _openMenu),
          body: RouterOutlet(key: _outletKey),
        ),
      ),
    );
  }
}
