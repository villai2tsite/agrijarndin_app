import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // Oculta la etiqueta "debug"
      home: WebViewContainer(),
    );
  }
}

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  _WebViewContainerState createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(  // Usamos SafeArea para evitar la superposición con la barra de estado
        child: WebView(
          initialUrl: 'https://www.agrijardi.pro/', // URL de la página a cargar
          javascriptMode: JavascriptMode.unrestricted,  // Habilita JavaScript
        ),
      ),
    );
  }
}
