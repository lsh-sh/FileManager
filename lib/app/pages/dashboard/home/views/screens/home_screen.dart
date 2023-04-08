library home;

import 'package:filemanager/app/shared_components/header_text.dart';
import 'package:filemanager/app/shared_components/file_list_button.dart';
import 'package:filemanager/app/utils/helpers/app_helpers.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:filemanager/app/constans/app_constants.dart';
import 'package:filemanager/app/shared_components/search_button.dart';
import 'package:filemanager/app/shared_components/custom_button.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// binding
part '../../bindings/home_binding.dart';

// controller
part '../../controllers/home_controller.dart';

// model
part '../../models/usage.dart';

part '../../models/user.dart';

// component
part '../components/category.dart';

part '../components/header.dart';

part '../components/storage_chart.dart';

part '../components/recent.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(kDefaultSpacing),
                    child: _Header(
                      user: controller.user,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultSpacing),
                    child: _StorageChart(usage: controller.usage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultSpacing),
                    child: _Category(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultSpacing),
                    child: _Rect(data: controller.recent),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
