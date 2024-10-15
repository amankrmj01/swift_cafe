import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/infrastructure/navigation/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import 'package:get/get.dart';

class GetItInstantly extends StatelessWidget {
  const GetItInstantly({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.DETAILS);
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.zero,
              child: ClipRect(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          AppImages.backgroundAuth02,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Latté',
                                style: TextStyle(
                                  color: Color(0xFFEFEFEF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.20,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 18,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.5 ⭐ {459}\n',
                                      style: TextStyle(
                                        // backgroundColor: Colors.black,
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                    10.widthBox,
                                    Container(
                                      padding: EdgeInsets.zero,
                                      margin: EdgeInsets.zero,
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.green,
                                          width: 1,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                constraints: BoxConstraints(maxWidth: 180),
                                child: Text(
                                  'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                  style: TextStyle(
                                    color: Color(0xFFEFEFEF),
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.20,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                'assets/images/home_coffee.png',
                                width: 130,
                                height: 120,
                              ),
                              Positioned(
                                left: 48,
                                bottom: 0,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  margin: EdgeInsets.zero,
                                  width: 36,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: WidgetStateProperty.all(
                                          EdgeInsets.zero),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Add',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
