import 'package:flutter/material.dart';

class CuadroDialogo extends StatelessWidget {
  final TextEditingController controller;

  const CuadroDialogo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Ingrese los datos',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 109, 65, 117),
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
