import 'package:flutter/material.dart';

class QRReaderMain extends StatelessWidget {
  const QRReaderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: const Center(
        child: Text(
          "Lector de QR",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}