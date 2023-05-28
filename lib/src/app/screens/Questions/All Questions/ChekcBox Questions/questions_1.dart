import 'model/questions_model.dart';

class Question1 extends QuestionModel {
  int _answerIndex = 0;

  Question1({String questionName = '१. परिवार मूलीको नाम _______ लिङ्ग', List<String> questionOption = const ["महिला", "परुुष ", "तेस्रो ललङ्गी"]})
      : super(questionName, questionOption);

  int get answerIndex => _answerIndex;

  set answerIndex(int value) {
    _answerIndex = value;
  }
}
