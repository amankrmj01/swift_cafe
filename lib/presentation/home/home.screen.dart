import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

import 'bottom_nav_bar.dart';
import 'controllers/home.controller.dart';
import 'home_row_01.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          HomeLayer01(),
          HomeLayer02(),
          HomeLayer03(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomeRow01(controller: controller),
              ],
            ),
          ).p24().box.make(),
          AnimatedPositioned(
            child: BottomNavBar(),
            duration: Duration(milliseconds: 500),
            left: 20,
            right: 20,
            bottom: 20,
          ),
        ],
      ),
    );
  }
}

class HomeLayer03 extends StatelessWidget {
  const HomeLayer03({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x33FFFFFF),
            blurRadius: 24,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.23, -0.97),
          end: Alignment(-0.23, 0.97),
          colors: [
            Colors.white.withOpacity(0.23000000417232513),
            Colors.white.withOpacity(0.11999999731779099),
            Colors.white.withOpacity(0.10999999940395355)
          ],
        ),
      ),
    );
  }
}

class HomeLayer02 extends StatelessWidget {
  const HomeLayer02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.50,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0x004F71EA), Color(0x82CF7A4B)],
          ),
        ),
      ),
    );
  }
}

class HomeLayer01 extends StatelessWidget {
  const HomeLayer01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundAuth01),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
