import 'package:get/get.dart';
import 'package:swift_cafe/presentation/home/controllers/home.controller.dart';

import '../../../../presentation/main/controllers/main.controller.dart';

class MainControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut(
      () => HomeController(),
    );
  }
}
