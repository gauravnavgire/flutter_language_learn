import 'package:flutter/material.dart';
import 'package:flutter_language_learn/app/data/models/language.dart';

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
        backgroundColor: const Color.fromARGB(255, 230, 0, 88),
        centerTitle: true,
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        const Center(
            child: Text(
          'Select a Language to start learning',
          style: TextStyle(fontSize: 20),
        )),
        TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(const Color.fromARGB(255, 230, 0, 88)),
          ),
          onPressed: () {
            Get.toNamed('/lesson_list', parameters: {"language": "ENGLISH"});
          },
          child: const Text('Learn English'),
        ),
        SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 230, 0, 88),
                        Color.fromARGB(255, 255, 64, 93)
                      ])),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          elevation: 10.0,
                          shadowColor: Colors.amber.shade100,
                          child: const SizedBox(
                            width: 200,
                            height: 400,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Quiz',
                                      style: TextStyle(fontSize: 24.0)),
                                  Text('English', style: TextStyle(fontSize: 24.0))
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.toNamed('/quiz', parameters: {"language": 'English'});
                  },
                );
              },
            )),
        TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(Color.fromARGB(255, 230, 0, 88)),
          ),
          onPressed: () {
            Get.toNamed('/lesson_list', parameters: {"language": "MARATHI"});
          },
          child: const Text('Learn Marathi'),
        ),
                SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 230, 0, 88),
                        Color.fromARGB(255, 255, 64, 93)
                      ])),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          elevation: 10.0,
                          shadowColor: Colors.amber.shade100,
                          child: const SizedBox(
                            width: 200,
                            height: 400,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Quiz',
                                      style: TextStyle(fontSize: 24.0)),
                                  Text('Marathi', style: TextStyle(fontSize: 24.0))
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.toNamed('/quiz', parameters: {"language": 'Marathi'});
                  },
                );
              },
            ))
        // ElevatedButton(
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        //   ),
        //   onPressed: () {
        //     Get.toNamed('/progress');
        //   },
        //   child: const Text('My Progress'),
        // )
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
        height: 200.0,
        width: 400.0,
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
