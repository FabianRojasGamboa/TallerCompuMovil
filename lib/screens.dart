import 'package:flutter/material.dart';
import 'package:taller_compu_movil/boton.dart';
import 'package:taller_compu_movil/cuadro_dialogo.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Screens> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';
  String _processedText = ''; // Variable para mostrar el texto procesado

  // Función para procesar el texto y contar la cantidad de cada letra
  String processText(String input) {
    Map<String, int> letterCount = {};

    // Contamos la cantidad de veces que aparece cada letra
    for (var letter in input.split('')) {
      letterCount[letter] = (letterCount[letter] ?? 0) + 1;
    }

    // Formateamos el resultado en el formato requerido: w4a2b1z1x1
    String result = '';
    letterCount.forEach((key, value) {
      result += '$key$value';
    });

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Ingrese los datos:'),
          CuadroDialogo(controller: _controller),
          const SizedBox(height: 30),
          CustomButton(
            text: 'Procesar Texto',
            icon: Icons.android,
            onPressed: () {
              setState(() {
                _inputText = _controller.text; // Guardamos el texto ingresado
                _processedText = processText(_inputText); // Procesamos el texto
              });
              print('Texto ingresado: $_inputText');
            },
          ),
          const SizedBox(height: 30),
          if (_inputText.isNotEmpty)
            Text('Texto ingresado: $_inputText',
                style: const TextStyle(fontSize: 17, letterSpacing: 1.0)),
          if (_processedText.isNotEmpty) const SizedBox(height: 30),
          Text(
            'Texto Procesado: $_processedText',
            style: const TextStyle(fontSize: 17, letterSpacing: 1.0),
          ),
        ],
      ),
    );
  }
}
