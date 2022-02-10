import 'package:flutter/material.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/custom_painter_animation/views/widgets/wave_animation.dart';

import 'package:get/get.dart';

import '../controllers/custom_painter_animation_controller.dart';

class CustomPainterAnimationView
    extends GetView<CustomPainterAnimationController> {
  const CustomPainterAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Painter Animation'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    heroTag: 'minus',
                    onPressed: controller.decrement,
                    child: const Icon(Icons.remove)),
                FloatingActionButton(
                    heroTag: 'add',
                    onPressed: controller.increment,
                    child: const Icon(Icons.add)),
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Obx(() => WaveAnimation(
                    position: controller.position.value, sections: 2)))
          ],
        ));
  }
}
