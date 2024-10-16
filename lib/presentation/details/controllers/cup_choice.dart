import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details.controller.dart';

class CupChoice extends StatelessWidget {
  const CupChoice({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailsController controller = Get.find();
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(controller.cupChoice.length, (index) {
          return CupChoiceWidget(
            index: index,
            label: controller.cupChoice[index],
            isSelected: controller.selectedCupIndex.value == index,
            onTap: (selectedIndex) {
              controller.setSelectedCupIndex(selectedIndex);
            },
          );
        }),
      ),
    );
  }
}

class CupChoiceWidget extends StatelessWidget {
  final int index;
  final String label;
  final bool isSelected;
  final Function(int) onTap;

  const CupChoiceWidget({
    super.key,
    required this.index,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
