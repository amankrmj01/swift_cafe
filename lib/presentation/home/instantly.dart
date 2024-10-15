import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';

class GetItInstantly extends StatelessWidget {
  const GetItInstantly({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4.5 ⭐ {459}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                                8.widthBox,
                                Container(
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
                          ],
                        ),
                        Image.asset(
                          'assets/images/home_coffee.png',
                          width: 130,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
