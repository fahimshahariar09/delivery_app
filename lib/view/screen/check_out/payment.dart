import 'package:delivery/constants/splash.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("payment"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(Appimages.payment)
        ],
      ),
    );
  }
}
