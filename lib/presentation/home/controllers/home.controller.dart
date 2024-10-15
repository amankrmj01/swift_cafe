import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  var now = DateTime.now().obs;
  var currDate = ''.obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    currDate.value = DateFormat('dd/MM/yyyy').format(now.value);
  }
}
