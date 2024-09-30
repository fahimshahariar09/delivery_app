import 'package:flutter/material.dart';

class DeliveryOptions extends StatelessWidget {
  const DeliveryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
