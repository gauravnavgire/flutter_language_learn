import 'package:flutter_language_learn/app/data/models/lesson.dart';
import 'package:flutter_language_learn/app/data/models/quiz.dart';

class Language{
  String language;
  String languageCode;
  List<Lesson>? lessons;
  List<Quiz>? quizes;
  var vocabulary = <String,String>{};

  Language({
    required this.language,
    required this.languageCode
    }
  );

}