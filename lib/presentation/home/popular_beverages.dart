import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cafe/infrastructure/navigation/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';

class PopularBeverages extends StatelessWidget {
  const PopularBeverages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          Routes.DETAILS,
          // transition: Transition.zoom,
        );
      },
      child: Container(
        width: double.infinity,
        color: Colors.black.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.heightBox,
            Text(
              '     Most Popular Beverages',
              style: TextStyle(
                color: Color(0xFFB5B5B5),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            20.heightBox,
            Container(
              padding: EdgeInsets.only(bottom: 20),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 210,
                    height: 240,
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: ClipRect(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                            child: Container(
                              height: 240,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                AppImages.backgroundAuth02,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Coffee2_${index + 1}.png',
                                width: 130,
                                height: 120,
                              ),
                              Text(
                                'Hot Cappuccino',
                                style: TextStyle(
                                  color: Color(0xFFCDCDCD),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.20,
                                ),
                              ),
                              8.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  20.widthBox,
                                  Text.rich(
                                    style: TextStyle(
                                      color: Color(0xFF2F2F2F),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.20,
                                    ),
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Espresso, Steamed Milk\n',
                                          style: TextStyle(
                                            color: Color(0xFF2F2F2F),
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '4.5',
                                          style: TextStyle(
                                            color: Color(0xFF2F2F2F),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ⭐ {458}',
                                          style: TextStyle(
                                            color: Color(0xFF2F2F2F),
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.ltr,
                                  ),
                                  8.widthBox,
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF7dc971),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 26,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
