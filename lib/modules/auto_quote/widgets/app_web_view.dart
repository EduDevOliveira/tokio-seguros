// WebView no Android/iOS (webview_flutter) e <iframe> na web: o
// webview_flutter não tem implementação web oficial.
export 'app_web_view_mobile.dart'
    if (dart.library.js_interop) 'app_web_view_web.dart';
