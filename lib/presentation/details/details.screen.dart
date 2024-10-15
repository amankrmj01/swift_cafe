import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/details.controller.dart';

class DetailsScreen extends GetView<DetailsController> {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
