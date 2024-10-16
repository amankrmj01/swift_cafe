import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/images.dart';

class HomeLayer02 extends StatelessWidget {
  const HomeLayer02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
      child: Container(
        height: Get.height,
        color: Colors.white
            .withOpacity(0.2), // Required for BackdropFilter to work
        child: Image.asset(
          AppImages.backgroundAuth02,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
