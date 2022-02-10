import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rive/rive.dart';

class RiveAnimationView extends GetView<RiveAnimationController> {
  const RiveAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Animation'),
        centerTitle: true,
      ),
      body: const RiveAnimation.network(
        'https://cdn.rive.app/animations/vehicles.riv',
      ),
    );
  }
}
