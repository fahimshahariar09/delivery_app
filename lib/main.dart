
import 'package:delivery/view/screen/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:delivery/view/screen/cart/add_to_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: BottomNaviBar(),
    );
  }
}
