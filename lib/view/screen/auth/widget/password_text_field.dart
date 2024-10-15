import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key, required this.passwordController, this.lText});

  final TextEditingController passwordController;
  final String? lText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
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
        labelText: lText,
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
