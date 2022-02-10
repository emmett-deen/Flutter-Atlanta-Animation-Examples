import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Animation Examples'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(children: [
            DrawerHeader(
              child: Center(
                  child: Text(
                'Flutter Animation Examples',
                style: Theme.of(context).textTheme.headline4,
              )),
            ),
            ...controller.drawerItems.map((item) => ListTile(
                  title: Text(item.title),
                  onTap: () => controller.navigateTo(item.route),
                ))
          ]),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select an example animation to view from the drawer!',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
