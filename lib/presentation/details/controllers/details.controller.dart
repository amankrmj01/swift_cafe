import 'package:get/get.dart';

class DetailsController extends GetxController {
  final milkData = [
    ['Skim Milk', false],
    ['Full cream milk', false],
    ['Soy Milk', false],
    ['Almond Milk', false],
    ['Oat Milk', false],
    ['Lactose Free Milk', false],
    ['Butter Milk', false],
    ['Butter', false], // Last cell is not empty
  ].obs;

  void toggleMilkData(int index, bool value) {
    // Ensure the index is within range
    if (index >= 0 && index < milkData.length) {
      // Update the value at the specified index
      milkData[index][1] = value;
      milkData.refresh(); // Refresh the list to trigger a UI update
    }
  }
}
