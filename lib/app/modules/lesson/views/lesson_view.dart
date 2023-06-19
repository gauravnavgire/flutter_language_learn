import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lesson_controller.dart';

final staticAnchorKey = GlobalKey();

class LessonView extends GetView<LessonController> {
  const LessonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LessonController lessonCntlr = Get.put(LessonController());
    var langauge = Get.parameters['language'];
    var lessonNo = Get.parameters['lesson_number'];
    var lesson = lessonCntlr.getLessonForLang(langauge!, int.parse(lessonNo!));

    return Scaffold(
        appBar: AppBar(
          title: Text('Lesson Number ${lesson?.lessonNo}'),
          backgroundColor: const Color.fromARGB(255, 230, 0, 88),
          centerTitle: true,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Text('${lesson?.lessonContent}'),
              )
            ]));

  }



}

class $ {
}
