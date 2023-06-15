import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController homeCntlr = Get.put(HomeController());
    homeCntlr.increment();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
        Center(
            child: Obx(() => Text(
                  'HomeView is with counter value = ${homeCntlr.count}',
                  style: TextStyle(fontSize: 20),
                ))),
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {
            Get.toNamed('/lesson');
          },
          child: const Text('Go To Lesson'),
        )
      ]),
    );
  }
}
