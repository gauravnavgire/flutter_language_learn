
mixin MultiChoiceAnswer{
  var answers = <String, bool>{};

  bool isMultiCorrectAnswer(List<String> selectedAnswer) {
    var isCorrect = false;

    selectedAnswer.forEach((element) {
      isCorrect = answers.containsKey(element);
    });

    return isCorrect;
  }

}
