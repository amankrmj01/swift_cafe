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
    [null, false], // Last cell is not empty
  ].obs;

  final sugarData = [
    ['Sugar X1', false],
    ['Sugar X2', false],
    ['½ Sugar', false],
    ['No Sugar', false],
  ].obs;

  final cupChoice = [
    'Full',
    '1/2 Full',
    '3/4 Full',
    '1/4 Full',
  ].obs;

  var selectedCupIndex = 0.obs;

  void toggleMilkData(int index, bool value) {
    if (index >= 0 && index < milkData.length) {
      milkData[index][1] = value;
      milkData.refresh();
    }
  }

  void toggleSugarData(int index, bool value) {
    if (index >= 0 && index < sugarData.length) {
      sugarData[index][1] = value;
      sugarData.refresh();
    }
  }

  void setSelectedCupIndex(int index) {
    selectedCupIndex.value = index;
  }
}
