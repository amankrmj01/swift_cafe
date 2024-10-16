import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swift_cafe/presentation/details/choice_grid.dart';
import 'package:swift_cafe/presentation/details/controllers/cup_choice.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/icons.dart';
import '../../consts/images.dart';
import 'drop_down.dart';
import 'choice_sugar.dart';
import 'controllers/details.controller.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final priority = false.obs;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black.withOpacity(0.7),
                elevation: 0,
                pinned: true,
                centerTitle: false,
                expandedHeight: 300.0,
                stretch: true,
                stretchTriggerOffset: 1.0,
                // snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  // title: Text(
                  //   'Latte',
                  //   style: TextStyle(
                  //     backgroundColor: Colors.black.withOpacity(0.7),
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.w500,
                  //     fontFamily: 'Inter',
                  //     height: 0,
                  //     letterSpacing: 0.20,
                  //   ),
                  // ),
                  background: Image.asset(
                    AppImages.detailsCoffee1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: Image.asset(
                        AppImages
                            .backgroundAuth01, // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Foreground content
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Latté',
                              style: TextStyle(
                                color: Color(0xFFEFEFEF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Spacer(),
                            CupertinoDropdownMenu(),
                          ],
                        ),
                        4.heightBox,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '4.5 ⭐ {459}\n',
                              style: TextStyle(
                                color: Colors.white,
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
                              width: 16,
                              height: 16,
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
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        4.heightBox,
                        Text(
                          'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                          style: TextStyle(
                            color: Color(0xFFEFEFEF),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: 0.20,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        8.heightBox,
                        'Choice of Cup Filling'
                            .text
                            .size(20)
                            .fontFamily('Inter')
                            .white
                            .make(),
                        4.heightBox,
                        CupChoice(),
                        8.heightBox,
                        'Choice of Milk'
                            .text
                            .size(20)
                            .fontFamily('Inter')
                            .white
                            .make(),
                        MilkGrid(
                          controller: controller,
                        ),
                        8.heightBox,
                        'Choice of Sugar'
                            .text
                            .size(20)
                            .fontFamily('Inter')
                            .white
                            .make(),
                        SugarGrid(
                          controller: controller,
                        ),
                        80.heightBox,
                      ],
                    ).box.p20.make(),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color.lerp(Colors.black.withOpacity(0.4),
                        Colors.brown.withOpacity(0.5), 0.6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      20.widthBox,
                      Obx(() => Checkbox(
                            value: priority.value,
                            onChanged: (value) {
                              priority.value = value!;
                            },
                            activeColor: Colors.green,
                            side: BorderSide(color: Colors.white),
                          ).scale(scaleValue: 1.2)),
                      'High Priority'
                          .text
                          .white
                          .fontFamily('Inter')
                          .size(16)
                          .make(),
                      2.widthBox,
                      Image.asset(
                        AppIcons.warning,
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(10),
                          shadowColor: WidgetStateProperty.all(Colors.black),
                          padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                          ),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.white),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: 'Submit'.text.make(),
                      ),
                      10.widthBox,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
