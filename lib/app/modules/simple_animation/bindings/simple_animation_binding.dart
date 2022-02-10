import 'package:get/get.dart';

import '../controllers/simple_animation_controller.dart';

class SimpleAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimpleAnimationController>(
      () => SimpleAnimationController(),
    );
  }
}
