import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

class AppWebView extends StatelessWidget {
  const AppWebView({super.key, required this.url, this.onProgress});

  final String url;

  /// O iframe só avisa quando termina de carregar (100).
  final ValueChanged<int>? onProgress;

  @override
  Widget build(BuildContext context) {
    return HtmlElementView.fromTagName(
      tagName: 'iframe',
      onElementCreated: (element) {
        final iframe = element as web.HTMLIFrameElement
          ..src = url
          ..title = 'Cotação Automóvel'
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.backgroundColor = 'white';
        iframe.onLoad.listen((_) => onProgress?.call(100));
      },
    );
  }
}
