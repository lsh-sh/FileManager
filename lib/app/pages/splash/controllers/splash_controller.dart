part of splash;

class SplashController extends GetxController {
  final isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 3));
    isLoading.value = false;
    goToDashboard();
  }

  void goToDashboard() => Get.offNamed(Routes.dashboard);
}
