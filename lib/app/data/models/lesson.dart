import 'package:flutter_language_learn/app/data/models/quiz.dart';

class Lesson {
  int lessonNo;
  String lessonName;
  String lessonContent;
  String language;
  List<Quiz>? quizes;

  Lesson({
    required this.lessonNo,
    required this.lessonName,
    required this.lessonContent,
    required this.language
  });
}

