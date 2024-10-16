import 'package:get/get.dart';

import '../../../../presentation/wallet/controllers/wallet.controller.dart';

class WalletControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(
      () => WalletController(),
    );
  }
}
