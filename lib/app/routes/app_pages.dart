import 'package:get/get.dart';

import 'package:flutter_atlanta_animation_examples/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/home/views/home_view.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/simple_animation/bindings/simple_animation_binding.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/simple_animation/views/simple_animation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.simpleAnimation,
      page: () => SimpleAnimationView(),
      binding: SimpleAnimationBinding(),
    ),
  ];
}
