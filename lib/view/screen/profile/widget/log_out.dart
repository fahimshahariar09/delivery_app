import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        shape: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
