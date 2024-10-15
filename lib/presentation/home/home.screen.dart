import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:swift_cafe/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/app_detials.dart';
import '../../consts/icons.dart';
import 'bottom_nav_bar.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.backgroundAuth01),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.backgroundAuth02),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
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
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
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
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        '👋',
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.currDate.value,
                            style: TextStyle(
                              color: Color(0xFFB5B5B5),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            AppDetails.appName,
                            style: TextStyle(
                              color: Color(0xFFB5B5B5),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: ShapeDecoration(
                          color: Color(0xC9F8F8F8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x0C000000),
                              blurRadius: 20,
                              offset: Offset(0, 5),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Image.asset(
                          AppIcons.iconNav04Bucket,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(AppImages.backgroundAuth01),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ).p24().box.make(),
        ],
      ),
    );
  }
}
