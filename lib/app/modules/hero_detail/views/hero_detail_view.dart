import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hero_detail_controller.dart';

class HeroDetailView extends GetView<HeroDetailController> {
  const HeroDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Detail View'),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          tag: controller.heroTag ?? '-1',
          child: Container(
            width: 200,
            height: 200,
            color: controller.color,
          ),
        ),
      ),
    );
  }
}
