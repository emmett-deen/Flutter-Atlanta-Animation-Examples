import 'package:flutter/material.dart';
import 'package:flutter_atlanta_animation_examples/app/routes/app_pages.dart';
import 'package:get/get.dart';

class GridAnimationController extends GetxController {
  void navigateTo(int index) {
    var color = Colors.primaries[index % Colors.accents.length];
    Get.toNamed(Routes.heroDetail,
        arguments: {'color': color}, parameters: {'heroTag': '$index'});
  }
}
