library app_pages;

import 'package:filemanager/app/pages/dashboard/cloud/views/screens/cloud_screen.dart';
import 'package:filemanager/app/pages/dashboard/home/views/screens/home_screen.dart';
import 'package:filemanager/app/pages/dashboard/index/views/screens/dashboard_screen.dart';
import 'package:filemanager/app/pages/splash/views/screens/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  // 初始路由
  static const initial = Routes.splash;

  // 路由跳转列表
  static final routes = <GetPage>[
    GetPage(
        name: _Paths.dashboard,
        page: () => const DashboardScreen(),
        bindings: [DashboardBinding(), HomeBinding(), CloudBinding()]),
    GetPage(
        name: _Paths.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding())
  ];
}
