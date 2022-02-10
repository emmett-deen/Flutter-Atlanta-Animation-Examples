import 'package:get/get.dart';

import '../controllers/rive_animation_controller.dart';

class RiveAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiveAnimationController>(
      () => RiveAnimationController(),
    );
  }
}
