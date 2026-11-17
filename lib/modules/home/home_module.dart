import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/modules/home/bloc/home_bloc.dart';
import 'package:tokio_seguros/modules/home/pages/home_page.dart';

final homeModule = createModule(
  register: (c) {
    c.route(
      '/',
      provide: (s) => s.addStreamable<HomeBloc>(
        HomeBloc.new,
        (v) => v.stream,
        (v) => v.close(),
      ),
      child: (context, state) => const HomePage(),
    );
  },
);
