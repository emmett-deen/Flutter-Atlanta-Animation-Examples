import 'package:get/get.dart';

import '../controllers/grid_animation_controller.dart';

class GridAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridAnimationController>(
      () => GridAnimationController(),
    );
  }
}
