import 'dart:async'; // For Timer
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../../home/controllers/home.controller.dart';

class MainController extends GetxController {
  final selectedIndex = 0.obs;
  late PageController pageController = PageController();
  final bottomNavBarPosition = 10.0.obs; // Initial position of the bottom nav
  Timer? _scrollStopTimer; // To detect scroll stops

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);

    // Find the HomeController and add a scroll listener
    final homeController = Get.find<HomeController>();
    homeController.scrollController.addListener(_scrollListener);
  }

  // Update the selected index and animate to the new page
  void updateIndex(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  // Jump directly to the given page without animation
  void smoothJumpToPage(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Scroll listener to hide/show the bottom nav bar
  void _scrollListener() {
    final homeController = Get.find<HomeController>();
    final scrollDirection =
        homeController.scrollController.position.userScrollDirection;

    if (scrollDirection == ScrollDirection.reverse) {
      // Hide the bottom nav bar when scrolling down
      bottomNavBarPosition.value = -50.0;

      // Cancel any existing scroll stop timer to avoid flickering
      _scrollStopTimer?.cancel();
    } else if (scrollDirection == ScrollDirection.forward) {
      // Start the timer to show the bottom nav bar after scrolling stops
      _startScrollStopTimer();
    }
  }

  // Timer to detect when the user stops scrolling
  void _startScrollStopTimer() {
    // Cancel any previous timer if it's still active
    _scrollStopTimer?.cancel();

    // Wait 200ms to confirm the scroll has stopped before showing the navbar
    _scrollStopTimer = Timer(const Duration(milliseconds: 200), () {
      bottomNavBarPosition.value = 10.0; // Show the bottom nav bar
    });
  }

  @override
  void onClose() {
    // Dispose of the scroll controller and cancel any active timer
    final homeController = Get.find<HomeController>();
    homeController.scrollController.removeListener(_scrollListener);
    _scrollStopTimer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
