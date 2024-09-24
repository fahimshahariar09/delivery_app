import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(""),
            radius: 80,
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                Text("fiest name"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                Text("last name"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                Text("phone"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                Text("password"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
