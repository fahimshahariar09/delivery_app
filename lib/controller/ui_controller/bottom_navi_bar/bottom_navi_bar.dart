
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:delivery/view/screen/cart/add_to_cart_screen.dart';
import 'package:delivery/view/screen/category/category_screen.dart';
import 'package:delivery/view/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviBarController extends GetxController{
  final pageController =PageController(initialPage: 0);
  final NotchBottomBarController notchBottomBarController =NotchBottomBarController(index: 0);
  RxInt index =0.obs;
  RxInt maxCount =3.obs;
  RxInt page =0.obs;

  RxList<Widget> bottomBarPage =[
    const CategoryScreen(),
     const AddToCartScreen(),
    //const ProfileScreen(),
  ].obs;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

}