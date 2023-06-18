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
        title: const Text('Learn new Language'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
                child: Obx(() => const Text(
                      'Select a Language to start learning',
                      style: TextStyle(fontSize: 20),
                    ))),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue.shade800),
              ),
              onPressed: () {
                Get.toNamed('/lesson_list',parameters: {"language": "ENGLISH"});
              },
              child: const Text('Learn English'),
            ),
          //  SizedBox(
          //       height: 50,
          //       child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     padding: const EdgeInsets.all(10.0),
          //     itemBuilder: (BuildContext context, int index) {
          //       if (index % 2 == 0) {
          //         return _buildCarousel(context, index ~/ 2);
          //       } else {
          //         return const Divider();
          //       }
          //     },
          //   )),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue.shade800),
              ),
              onPressed: () {
                Get.toNamed('/lesson_list', parameters: {"language": "MARATHI"});
              },
              child: const Text('Learn Marathi'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Get.toNamed('/progress');
              },
              child: const Text('My Progress'),
            )
          ]),
    );
  }
}

Widget _buildCarousel(BuildContext context, int carouselIndex) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text('Carousel $carouselIndex'),
      SizedBox(
        // you may want to use an aspect ratio here for tablet support
        height: 100.0,
        child: PageView.builder(
          // store this controller in a State to save the carousel scroll position
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (BuildContext context, int itemIndex) {
            return _buildCarouselItem(context, carouselIndex, itemIndex);
          },
        ),
      )
    ],
  );
}

Widget _buildCarouselItem(
    BuildContext context, int carouselIndex, int itemIndex) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
  );
}
