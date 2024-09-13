
import 'package:delivery/view/screen/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:delivery/view/screen/cart/add_to_cart_screen.dart';
import 'package:delivery/view/screen/vegetables/vegetables_detalis.dart';
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
        home: AddToCartScreen(),
    );
  }
}
