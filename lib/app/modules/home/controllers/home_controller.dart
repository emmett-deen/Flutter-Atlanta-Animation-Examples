import 'package:flutter_atlanta_animation_examples/app/data/models/drawer_item.dart';
import 'package:flutter_atlanta_animation_examples/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<DrawerItem> drawerItems = [
    DrawerItem(title: 'Simple Animation', route: Routes.simpleAnimation),
    DrawerItem(title: 'Grid Animation', route: Routes.gridAnimation),
  ];

  Future<void> navigateTo(String route) async {
    Get.back();
    return Get.toNamed(route);
  }
}
