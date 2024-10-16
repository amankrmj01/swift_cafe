import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/wallet.controller.dart';

class WalletScreen extends GetView<WalletController> {
  const WalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WalletScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WalletScreen ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
