import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:pure_code_app/contact.dart';
import 'package:pure_code_app/game.dart';
import 'package:pure_code_app/home.dart';
import 'package:pure_code_app/mobileapp.dart';
import 'package:pure_code_app/services.dart';
import 'package:pure_code_app/thanks.dart';
import 'package:pure_code_app/works.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Pure_code_app(), // Wrap your app
      ),
    );

class Pure_code_app extends StatelessWidget {
  const Pure_code_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        "/services": (context) => Services(),
        "/works": (context) => const Works(),
        "/contact": (context) => const Contact(),
        "/mobileapp e": (context) => const Mobileapp(),
        "/thanks": (context) => const Thanks(),
        "/game": (context) => const Game(),
        "/web": (context) => const Game(),
      },
    );
  }
}
