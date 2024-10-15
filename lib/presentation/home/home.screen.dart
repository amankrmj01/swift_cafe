import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/presentation/auth/auth.screen.dart';
import 'package:swift_cafe/presentation/home/controllers/search_bar.dart';
import 'package:swift_cafe/presentation/home/instantly.dart';
import 'package:velocity_x/velocity_x.dart';
import 'bottom_nav_bar.dart';
import 'controllers/home.controller.dart';
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
        alignment: Alignment.topCenter,
        children: [
          HomeLayer01(),
          HomeLayer02(),
          AuthLayer01(),
          SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 130,
                  collapsedHeight: 110,
                  elevation: 0,
                  flexibleSpace: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final scrollPercentage =
                          (constraints.maxHeight - kToolbarHeight) /
                              (130 - kToolbarHeight);
                      final backgroundColor = Color.lerp(
                          Colors.black, Colors.transparent, scrollPercentage);

                      return Container(
                        color: backgroundColor,
                        child: Column(
                          children: [
                            HomeRow01(
                              controller: controller,
                            ),
                            AppSearchBar(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: PopularBeverages(),
                ),
                GetItInstantly(),
                SliverToBoxAdapter(
                  child: 80.heightBox,
                ),
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
