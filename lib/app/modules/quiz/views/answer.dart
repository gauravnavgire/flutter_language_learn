import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/quiz_controller.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final int score;

  const Answer(this.selectHandler, this.answerText, this.score, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quizController = Get.find<QuizController>();
    // use SizedBox for white space instead of Container
    return SizedBox(
      width: 200.0,
      child: ElevatedButton(
        onPressed: (){quizController.answerQuestion(score);},
        style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(const TextStyle(color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: Text(answerText),
      ),

    ); //Container
  }
}
