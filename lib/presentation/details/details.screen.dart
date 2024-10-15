import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import 'controllers/details.controller.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          pinned: true,
          centerTitle: false,
          expandedHeight: 300.0,
          stretch: true,
          stretchTriggerOffset: 1.0,
          // snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Latte'),
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
                  AppImages.backgroundAuth01, // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              // Foreground content
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
                  4.heightBox,
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 18,
                    child: Row(
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
                  Obx(
                    () => ListTile(
                      title: Text(controller.milkData[1][0]),
                      trailing: Switch(
                        value: controller.milkData[1][1],
                        onChanged: (bool value) {
                          controller.milkData[1][1] = value;
                        },
                      ),
                    ),
                  ),
                  800.heightBox,
                ],
              ).box.p20.make(),
            ],
          ),
        )
      ],
    ));
  }
}
