import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../home/controllers/home.controller.dart';

class MainController extends GetxController {
  final selectedIndex = 0.obs;
  late PageController pageController = PageController();
  final bottomNavBarPosition = 10.0.obs; // Initial bottom nav position
  Timer? _scrollStopTimer; // To detect scroll stops
  double _lastScrollOffset = 0.0; // To track the last scroll offset

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);

    // Attach scroll listener from HomeController
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

  // Scroll listener to detect when scrolling happens
  void _scrollListener() {
    final homeController = Get.find<HomeController>();
    final scrollController = homeController.scrollController;
    final currentScrollOffset = scrollController.position.pixels;

    if (currentScrollOffset != _lastScrollOffset) {
      // If the scroll offset changes, hide the bottom nav bar
      bottomNavBarPosition.value = -60.0;
      _lastScrollOffset = currentScrollOffset; // Update the last scroll offset
      _scrollStopTimer?.cancel(); // Cancel any existing timer
      _startScrollStopTimer(); // Start the timer to detect if scrolling stops
    }
  }

  // Timer to detect when scrolling has stopped
  void _startScrollStopTimer() {
    _scrollStopTimer?.cancel(); // Cancel any existing timer

    // Wait 300ms to confirm scroll has stopped before showing the nav bar
    _scrollStopTimer = Timer(const Duration(milliseconds: 500), () {
      final homeController = Get.find<HomeController>();
      final currentScrollOffset =
          homeController.scrollController.position.pixels;

      // If the scroll offset hasn't changed, consider scrolling stopped
      if (currentScrollOffset == _lastScrollOffset) {
        bottomNavBarPosition.value = 10.0; // Show the bottom nav bar
      }
    });
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
