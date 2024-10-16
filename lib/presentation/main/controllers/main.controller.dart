import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../home/controllers/home.controller.dart';

class MainController extends GetxController {
  final selectedIndex = 0.obs;
  late PageController pageController = PageController();
  final bottomNavBarPosition = 10.0.obs;
  Timer? _scrollStopTimer;
  double _lastScrollOffset = 0.0;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);

    final homeController = Get.find<HomeController>();
    homeController.scrollController.addListener(_scrollListener);
  }

  void updateIndex(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void smoothJumpToPage(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  void _scrollListener() {
    final homeController = Get.find<HomeController>();
    final scrollController = homeController.scrollController;
    final currentScrollOffset = scrollController.position.pixels;

    if (currentScrollOffset != _lastScrollOffset) {
      bottomNavBarPosition.value = -60.0;
      _lastScrollOffset = currentScrollOffset;
      _scrollStopTimer?.cancel();
      _startScrollStopTimer();
    }
  }

  // Timer to detect when scrolling has stopped
  void _startScrollStopTimer() {
    _scrollStopTimer?.cancel();
    _scrollStopTimer = Timer(
      const Duration(milliseconds: 500),
      () {
        final homeController = Get.find<HomeController>();
        final currentScrollOffset =
            homeController.scrollController.position.pixels;

        if (currentScrollOffset == _lastScrollOffset) {
          bottomNavBarPosition.value = 10.0;
        }
      },
    );
  }

  @override
  void onClose() {
    final homeController = Get.find<HomeController>();
    homeController.scrollController.removeListener(_scrollListener);
    _scrollStopTimer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
