
import 'package:delivery/view/screen/cart/cart_screen.dart';
import 'package:delivery/view/screen/vegetables/vegetables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: CartScreen(),
    );
  }
}
