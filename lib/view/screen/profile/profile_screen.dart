import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(""),
            radius: 80,
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
