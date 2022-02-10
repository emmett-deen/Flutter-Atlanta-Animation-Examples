import 'package:get/get.dart';

import 'package:flutter_atlanta_animation_examples/app/modules/grid_animation/bindings/grid_animation_binding.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/grid_animation/views/grid_animation_view.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/hero_detail/bindings/hero_detail_binding.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/hero_detail/views/hero_detail_view.dart';
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
      page: () => const SimpleAnimationView(),
      binding: SimpleAnimationBinding(),
    ),
    GetPage(
      name: _Paths.gridAnimation,
      page: () => const GridAnimationView(),
      binding: GridAnimationBinding(),
    ),
    GetPage(
      name: _Paths.heroDetail,
      page: () => const HeroDetailView(),
      binding: HeroDetailBinding(),
    ),
  ];
}
