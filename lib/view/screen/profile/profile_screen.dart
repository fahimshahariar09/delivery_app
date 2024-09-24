import 'package:delivery/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(""),
                radius: 80,
              ),
              CommonButton(
                  buttonName: "Change Profile", buttonWidth: 250, onTap: () {}),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: const Row(
                  children: [
                    Text("first name"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: const Row(
                  children: [
                    Text("last name"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: const Row(
                  children: [
                    Text("phone"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: const Row(
                  children: [
                    Text("password"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CommonButton(buttonName: "Save", buttonWidth: 150, onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
