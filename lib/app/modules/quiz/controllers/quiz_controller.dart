import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  final count = 0.obs;

  final questions = const [
    {
      'questionText': 'Q1. Who spoke to Anna ?',
      'answers': [
        {'text': 'David', 'score': -2},
        {'text': 'Abby', 'score': -2},
        {'text': 'Roger', 'score': 10},
        {'text': 'Pete', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is xyz?',
      'answers': [
        {'text': 'One', 'score': -2},
        {'text': 'Two', 'score': -2},
        {'text': 'Three', 'score': -2},
        {
          'text':
              'Build xyz. Lorem ipsum.',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Lorem ipsum?',
      'answers': [
        {'text': 'ABC', 'score': -2},
        {'text': 'XYZ', 'score': 10},
        {'text': 'RTG', 'score': -2},
        {'text': 'ZSJ', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q4. Is xyz lorem ipsum?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];

  final questionIndex = 0.obs;
  final totalScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void resetQuiz() {
  //  SchedulerBinding.instance.addPostFrameCallback((_) {
      questionIndex.value = 0;
      totalScore.value = 0;
  //  });
  }

  void answerQuestion(int score) {
  //  SchedulerBinding.instance.addPostFrameCallback((_) {
    totalScore.value += score;
    questionIndex.value = questionIndex.value + 1;
  //  });
    // ignore: avoid_print
    print(questionIndex);
    if (questionIndex < questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }
}
