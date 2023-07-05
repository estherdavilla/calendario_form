import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagina.dart';

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
        primarySwatch: Colors.purple  
      ),
      debugShowCheckedModeBanner: false,
      home: const Pagina(),
    );
  }
}

