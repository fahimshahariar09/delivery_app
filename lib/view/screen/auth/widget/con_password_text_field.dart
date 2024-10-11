import 'package:flutter/material.dart';

class ConPasswordTextField extends StatelessWidget {
  const ConPasswordTextField({super.key, required this.conpasswordController});

  final TextEditingController conpasswordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: conpasswordController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 1)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: const Text("Confram Password"),
      ),
      validator: (value) {
        if (value == '' || value == null) {
          return "password can't be empty";
        }
        return null;
      },
    );
  }
}
