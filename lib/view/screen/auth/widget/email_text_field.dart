import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(),
      ),
    );
  }
}
