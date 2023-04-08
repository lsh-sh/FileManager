library splash;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filemanager/app/constans/app_constants.dart';
import 'package:filemanager/app/config/routes/app_pages.dart';

// binding
part '../../bindings/splash_binding.dart';

// controller
part '../../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Image.asset(ImageRaster.logo, height: 150),
            const Spacer(flex: 1),
            Obx(
              () => Visibility(
                  visible: controller.isLoading.value,
                  child: const CircularProgressIndicator()),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
