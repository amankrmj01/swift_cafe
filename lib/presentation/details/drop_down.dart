import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'drop_down.controller.dart'; // Import the controller

// ignore: use_key_in_widget_constructors
class CupertinoDropdownMenu extends StatelessWidget {
  final CupertinoDropdownMenuController controller =
      Get.put(CupertinoDropdownMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CupertinoButton(
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              4.widthBox,
              Text(controller.selectedValue.toString()),
              1.widthBox,
              SizedBox(
                height: 20, // Set the height of the divider
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
              ),
              // 1.widthBox,
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        onPressed: () => _showPicker(context),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 250,
        color: Colors.black.withOpacity(0.4),
        child: CupertinoPicker(
          backgroundColor: Colors.black.withOpacity(0.4),
          itemExtent: 28.0,
          onSelectedItemChanged: (int index) {
            controller.selectedValue.value = index + 1;
          },
          children: List<Widget>.generate(4, (int index) {
            return Center(
              child: Text(
                (index + 1).toString(),
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
        ),
      ),
    );
  }
}
