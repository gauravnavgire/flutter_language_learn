import 'package:flutter/material.dart';
import '../controllers/lesson_controller.dart';
import 'package:get/get.dart';

class LessonList extends GetView<LessonController> {
  const LessonList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LessonController lessonCntlr = Get.put(LessonController());
    var langauge = Get.parameters['language'];
    var lessons = lessonCntlr.getLessonsForLang(langauge!);
    return Scaffold(
        appBar: AppBar(
          title: Text('${langauge} Lessons'),
        ),
        body: ListView.builder(
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.amber.shade100,
                      child: ListTile(
                        leading: Text(lessons[index].lessonNo.toString()),
                        title: Text(lessons[index].lessonName),
                        subtitle:
                            Text('Language - ${lessons[index].language}'),
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Get.toNamed('/lesson', parameters: {
                  "language": lessons[index].language,
                  "lesson_number": lessons[index].lessonNo.toString()
                });
              },
            );
          },
        ));
  }
}
