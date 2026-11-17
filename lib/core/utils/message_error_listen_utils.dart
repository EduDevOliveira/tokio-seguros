import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';

class MessageErrorListenUtils {
  MessageErrorListenUtils._();

  static void snackBar(BuildContext context, {Object? error, String? message}) {
    final text =
        message ??
        switch (error) {
          final AuthFailure e => AuthMessageFailure.map(e),
          final AppFailure e => e.message,
          _ => 'Erro inesperado. Tente novamente.',
        };

    ScaffoldMessenger.maybeOf(context)
      ?..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(text)));
  }
}
