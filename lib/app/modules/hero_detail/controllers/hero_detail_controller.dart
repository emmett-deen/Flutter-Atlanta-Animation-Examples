import 'dart:ui';

import 'package:get/get.dart';

class HeroDetailController extends GetxController {
  final Color color = Get.arguments['color'];
  final String? heroTag = Get.parameters['heroTag'];
}
