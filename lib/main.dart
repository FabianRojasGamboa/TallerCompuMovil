import 'package:flutter/material.dart';
import 'package:taller_compu_movil/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taller',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Taller'),
        ),
        body: const Screens(),
      ),
    );
  }
}
