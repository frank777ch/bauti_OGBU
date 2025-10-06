import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  const InputData({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField (
        decoration: InputDecoration(
          hintText: '(ejem. 22200078 o 71705559)',
          border: OutlineInputBorder(),
          labelText: 'Ingrese el código o DNI',
        ),
      );
  }
}