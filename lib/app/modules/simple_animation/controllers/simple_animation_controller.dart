import 'dart:math';

import 'package:get/get.dart';

class SimpleAnimationController extends GetxController {
  final Rx<double> width = 175.0.obs;
  final Rx<double> height = 175.0.obs;

  void randomize(){
    width.value = 100 + Random().nextDouble() * 150;
    height.value = 100 + Random().nextDouble() * 150;
  }
}
