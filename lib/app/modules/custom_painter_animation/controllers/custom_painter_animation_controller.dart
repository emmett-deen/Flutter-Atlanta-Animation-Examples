import 'package:get/get.dart';

class CustomPainterAnimationController extends GetxController {
  final position = 3.obs;

  void increment() => position.value++ % 3;
  void decrement() => position.value-- % 3;
}
