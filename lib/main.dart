import 'package:flutter/material.dart';
import 'package:myapp/homapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // No es necesario agregar la ruta si ya estás usando 'home'
      routes: {
        "/home": (context) => HomePage(),
      },
    );
  }
}
