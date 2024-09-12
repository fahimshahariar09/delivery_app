import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 45,
        width: MediaQuery.sizeOf(context).width,
        child: Text("data"),
      )
    );
  }
}
