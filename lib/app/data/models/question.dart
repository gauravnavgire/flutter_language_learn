
import 'package:flutter_language_learn/app/data/models/mixin/fillblanksanswer.dart';
import 'package:flutter_language_learn/app/data/models/mixin/multicchoiceanswer.dart';

class Question with FillBlankAnswer, MultiChoiceAnswer { 
  String questionNo;
  String description;

  Question({
    required this.questionNo,
    required this.description
  });


}