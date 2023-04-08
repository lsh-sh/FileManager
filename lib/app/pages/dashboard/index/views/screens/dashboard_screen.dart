library dashboard;

import 'package:filemanager/app/constans/app_constants.dart';
import 'package:filemanager/app/pages/dashboard/cloud/views/screens/cloud_screen.dart';
import 'package:filemanager/app/pages/dashboard/home/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// component
part '../components/bottom_navbar.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onNavbarSelected,
        children: const [HomeScreen(), CloudScreen()],
      ),
      bottomNavigationBar: Obx(() => _BottomNavbar(
          currentIndex: controller.currentIndex.value,
          onSelected: controller.changePage)),
    );
  }
}
