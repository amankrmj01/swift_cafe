import 'package:get/get.dart';

class DetailsController extends GetxController {
  final List<List<dynamic>> milkData = [
    ['Skim Milk', false],
    ['Full cream milk', false],
    ['Soy Milk', false],
    ['Almond Milk', false],
    ['Oat Milk', false],
    ['Lactose Free Milk', false],
    ['Butter Milk', false],
    ['Butter', false], // Last cell is empty
  ].obs;
}
