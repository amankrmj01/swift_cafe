import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/presentation/main/bottom_nav_bar.dart';
import 'package:swift_cafe/presentation/screens.dart';
import 'controllers/main.controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.smoothJumpToPage,
            children: [
              HomeScreen(),
              UserScreen(),
              WalletScreen(),
              CartScreen(),
              NotificationScreen(),
            ],
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              bottom: controller.bottomNavBarPosition.value,
              left: 20,
              right: 20,
              child: BottomNavBar(),
            ),
          ),
        ],
      ),
    );
  }
}
