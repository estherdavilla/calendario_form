import 'dart:math';

import 'package:flutter/material.dart';
import '../telas/cadastro.dart';
import '../telas/login.dart';
import '../telas/pagina.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //É equivalente a tag <head> do html
      title: "BaseApp",
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: generateMaterialColor(Palette.primary)) 
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/pagina':(context) => const Pagina(),
        '/cadastro':(context) => const Curso(),
      },
    );
  }
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

class Palette {
  // Your hexadecimal color code
  static const Color primary = Color(0xFF004A8D);
}