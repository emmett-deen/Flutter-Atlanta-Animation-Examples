import 'package:get/get.dart';

import '../controllers/hero_detail_controller.dart';

class HeroDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeroDetailController>(
      () => HeroDetailController(),
    );
  }
}
