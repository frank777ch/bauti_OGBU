import 'package:flutter/material.dart';
import 'features/qr_reader/widgets/section1.dart';
import 'features/qr_reader/widgets/section2.dart';

void main() {
  runApp(const BautiApp());
}

class BautiApp extends StatelessWidget {
  const BautiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bauti App',
      home: Scaffold(
        /* appBar: AppBar(
          title: const Text("Baje de Mauricio"),
          backgroundColor: Colors.purple,
        ), */
        body: const Column(
          children: [
            Expanded(flex: 2, child: Section1()),
            Expanded(flex: 3, child: Section2()),
          ],
        ),
      ),
    );
  }
}
