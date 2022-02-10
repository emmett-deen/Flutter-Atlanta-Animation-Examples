import 'package:get/get.dart';

import '../controllers/custom_painter_animation_controller.dart';

class CustomPainterAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomPainterAnimationController>(
      () => CustomPainterAnimationController(),
    );
  }
}
