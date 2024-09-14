import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({super.key,required this.lText, this.icon});

  //final TextEditingController searchController;
  final String lText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
       // controller: searchController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon:icon ?? const Icon(Icons.search),
          labelText: lText,
        ),
      ),
    );
  }
}
