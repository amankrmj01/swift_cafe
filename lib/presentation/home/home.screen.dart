import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/presentation/auth/auth.screen.dart';
import 'package:swift_cafe/presentation/home/controllers/search_bar.dart';
import 'package:swift_cafe/presentation/home/instantly.dart';
import 'package:velocity_x/velocity_x.dart';
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
              controller: controller.scrollController,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 130,
                  collapsedHeight: 114,
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
                            4.heightBox,
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
                SliverToBoxAdapter(
                  child: Text(
                    '\n     Get it instantly',
                    style: TextStyle(
                      color: Color(0xFFB5B5B5),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                GetItInstantly(),
                SliverToBoxAdapter(
                  child: 70.heightBox,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
