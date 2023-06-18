import 'package:flutter/material.dart';

import '../../../../data/models/lesson.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;
  const LessonItem({Key? key, required this.lesson}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(lesson.lessonName, style: const TextStyle(fontSize: 24.0)),
          Text(
            'Language : ${lesson.language}',
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
