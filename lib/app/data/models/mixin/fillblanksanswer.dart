mixin FillBlankAnswer{
    late String correctAnswer;

    bool isCorrectAnswer(String selectedAnswer){
      return correctAnswer==selectedAnswer;
    }
}