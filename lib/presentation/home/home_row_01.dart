import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/app_detials.dart';
import '../../consts/icons.dart';
import '../../consts/images.dart';
import 'controllers/home.controller.dart';

class HomeRow01 extends StatelessWidget {
  const HomeRow01({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        4.widthBox,
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
        4.widthBox,
      ],
    );
    // .box.roundedSM.color(Colors.black.withOpacity(0.2)).make();
  }
}
