import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/screen1.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screen1(),
    );
  }
}