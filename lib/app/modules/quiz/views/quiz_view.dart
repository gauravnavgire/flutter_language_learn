import 'package:flutter/material.dart';
import 'package:flutter_language_learn/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:get/get.dart';

import './quiz.dart';
import './result.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QuizController quizCntlr = Get.put(QuizController());
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: const Color.fromARGB(255, 230, 0, 88),
      ),
      body: 
      // Padding(
      //     padding: const EdgeInsets.all(30.0),
      //     child: Obx(
      //       () => quizCntlr.questionIndex < quizCntlr.questions.length
      //           ? Quiz(
      //               answerQuestion: quizCntlr.answerQuestion,
      //               questionIndex: quizCntlr.questionIndex.value,
      //               questions: quizCntlr.questions,
      //             ) //Quiz
      //           : Result(quizCntlr.totalScore.value, quizCntlr.resetQuiz),
      //     )), 
          Padding(
          padding: const EdgeInsets.all(30.0),
          child: quizCntlr.questionIndex < quizCntlr.questions.length
                ? Quiz(
                    answerQuestion: quizCntlr.answerQuestion,
                    questionIndex: quizCntlr.questionIndex.value,
                    questions: quizCntlr.questions,
                  ) //Quiz
                : Result(quizCntlr.totalScore.value, quizCntlr.resetQuiz),
          ),//Padding
    );
  }
}
