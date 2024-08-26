import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicia la URL cuando la aplicación se abre
    _launchURL();

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Cargando página...'),
        ),
      ),
    );
  }

  void _launchURL() async {
    final Uri url = Uri.parse('https://agrijardin-test.odoo.com/');
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw 'Could not launch $url';
    }
  }
}
