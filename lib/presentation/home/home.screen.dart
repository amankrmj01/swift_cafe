import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/presentation/auth/auth.screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'bottom_nav_bar.dart';
import 'controllers/home.controller.dart';
import 'controllers/search_bar.dart';
import 'home_layer_01.dart';
import 'home_layer_02.dart';
import 'home_row_01.dart';
import 'popular_beverages.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          HomeLayer01(),
          HomeLayer02(),
          AuthLayer01(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomeRow01(controller: controller),
                20.heightBox,
                AppSearchBar(),
                20.heightBox,
                PopularBeverages(),
                20.heightBox,
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            left: 20,
            right: 20,
            bottom: 20,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
