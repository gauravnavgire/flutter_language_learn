import 'package:flutter_language_learn/app/data/models/question.dart';

class Quiz {
  int quizID;
  String quizName;
  Level level;

  List<Question> questions = List.empty();

  Quiz({
    required this.quizID,
    required this.quizName,
    required this.level
  });

  void addQuestions(var questions){
    questions.addAll(questions);
  }
}

enum Level {
  BEGINNER,
  INTERMEDIATE,
  ADVANCED
}
