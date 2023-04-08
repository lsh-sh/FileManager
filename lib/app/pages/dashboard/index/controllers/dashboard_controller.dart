part of dashboard;

class DashboardController extends GetxController {
  final currentIndex = 0.obs;
  final pageController = PageController();

  void changePage(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onNavbarSelected(int index) {
    currentIndex.value = index;
  }
}
