import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lesson_controller.dart';

class LessonView extends GetView<LessonController> {
  const LessonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LessonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LessonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
