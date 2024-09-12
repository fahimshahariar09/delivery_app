import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:delivery/controller/ui_controller/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNaviBarController bottomNaviBarController =
    Get.put(BottomNaviBarController());
    return Scaffold(
        body: PageView(
          controller: bottomNaviBarController.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(bottomNaviBarController.bottomBarPage.length,
                  (index) => bottomNaviBarController.bottomBarPage[index]),
        ),
        extendBody: true,
        bottomNavigationBar: (bottomNaviBarController.bottomBarPage.length <=
            bottomNaviBarController.maxCount.value)
            ? AnimatedNotchBottomBar(
          notchBottomBarController:
          bottomNaviBarController.notchBottomBarController,
          color: Colors.blueAccent,
          showLabel: true,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          shadowElevation: 10,
          kBottomRadius: 25,
          notchColor: Colors.grey,
          removeMargins: false,
          bottomBarWidth: MediaQuery.sizeOf(context).width,
          showShadow: false,
          kIconSize: 20,
          durationInMilliSeconds: 300,
          showBottomRadius: true,
          itemLabelStyle: const TextStyle(
            fontSize: 15,
            color: Colors.red,
          ),
          elevation: 2,
          bottomBarItems: [
            buildBottomBarItem(icon: Icons.dashboard, label: "Category"),
            buildBottomBarItem(icon: Icons.shopping_cart, label: "Cart"),
            buildBottomBarItem(icon: Icons.person, label: "Profile"),
          ],
          onTap: (index) {
            bottomNaviBarController.pageController.jumpToPage(index);
          },
        )
            : null);
  }

  BottomBarItem buildBottomBarItem(
      {required IconData icon, required String label}) {
    return BottomBarItem(
      inActiveItem: Icon(
        icon,
        color: Colors.black,
      ),
      activeItem: Icon(
        icon,
        color: Colors.white,
      ),
      itemLabel: label,
    );
  }
}
