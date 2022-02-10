import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/simple_animation_controller.dart';

class SimpleAnimationView extends GetView<SimpleAnimationController> {
  const SimpleAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Animations'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
                color: Colors.blue,
                width: controller.width.value,
                height: controller.height.value)),
            Center(
              child: ElevatedButton(
                  onPressed: () => controller.randomize(),
                  child: const Text('Animate')),
            )
          ],
        ));
  }
}
