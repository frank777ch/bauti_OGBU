import 'package:flutter/material.dart';
import 'widgets/input_data.dart';
import 'widgets/button_data.dart';

class TicketDataMain extends StatefulWidget {
  const TicketDataMain({super.key});

  @override
  State<TicketDataMain> createState() => _TicketDataMainState();
}

class _TicketDataMainState extends State<TicketDataMain> {
  @override
  Widget build(BuildContext context) {
    return Container (
      margin: const EdgeInsets.all(10),
      child: Column (
        children: [
          Row(
            children: [
              const Expanded(child: InputData()),
              ButtonData(),
            ],
          ),

          const SizedBox(height: 10),

          Expanded (
            child: Container(
              color: const Color.fromARGB(255, 25, 4, 60),
            ),
          ),
        ],
      ),
    );
  }
}
