import 'package:flutter/material.dart';
import 'features/qr_reader/qr_reader_main.dart';
import 'features/ticket_data/ticket_data_main.dart';

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
        body: const Column(
          children: [
            Expanded(flex: 2, child: QRReaderMain()),
            Expanded(flex: 3, child: TicketDataMain()),
          ],
        ),
      ),
    );
  }
}
