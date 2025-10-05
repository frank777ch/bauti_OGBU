import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue[50],
      child: Column(
        children: [
          const SizedBox(height: 10),
          // Input futuro
          TextField(
            decoration: InputDecoration(
              labelText: 'Ingresa algún dato',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(height: 10),
          // Imagen desde URL
          Expanded(
            child: Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2f7a0d7ebdafd20970e58cc7a1b1f3f6036c2d39c3f1f4d9f98ee8966fdf0ab5.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
