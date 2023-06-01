import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question30 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  int answerIndex2 = 0;
  int answerIndex3 = 0;
  String firstQuestion = "३०.१ घरबाट विद्यालय जान लाग्ने समय (कक्षा पाँचसम्म)";
  String secondQuestion = "३०.२ घरबाट विद्यालय जान लाग्ने समय (आधारभुत तह)";
  String thirdQuestion = "३०.३ घरबाट विद्यालय जान लाग्ने समय (कक्षा दशसम्म)";
  String fourthQuestion = "३०.४ घरबाट विद्यालय जान लाग्ने समय (माध्यामिक तह)";

  Question30(
      {String questionName = '२९. विद्यालयस्तरमा अध्ययन गरिरहेका बालबालिकाको विवरण',
      List<String> questionOption = const ["१५ मिनेट भन्दा कम", "१५-३० मिनेट", "३० मिनेट – १ घण्टा", "१ घण्टाभन्दा बढी"]})
      : super(questionName, questionOption);
}

class Question30Card extends StatefulWidget {
  const Question30Card({super.key});

  @override
  State<Question30Card> createState() => _Question30CardState();
}

final Question30 question = Question30();

class _Question30CardState extends State<Question30Card> {
  var selectedOption = "";
  var selectedOption1 = "";
  var selectedOption2 = "";
  var selectedOption3 = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFF1F1F1)), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(question.firstQuestion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption == option,
                  onChanged: (isChecked) {
                    setState(() {
                      if (!isChecked) {
                        QuestionsDomain.setAnswer30_1(index);
                        selectedOption = option;
                        question.answerIndex = index;
                      } else {
                        QuestionsDomain.setAnswer30_1(null);
                        selectedOption = "";
                      }
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
              Text(question.secondQuestion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption1 == option,
                  onChanged: (isChecked) {
                    setState(() {
                      if (!isChecked) {
                        QuestionsDomain.setAnswer30_1(index);

                        selectedOption1 = option;
                        question.answerIndex = index;
                      } else {
                        QuestionsDomain.setAnswer30_2(null);
                        selectedOption1 = "";
                      }
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
              Text(question.thirdQuestion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption2 == option,
                  onChanged: (isChecked) {
                    setState(() {
                      if (!isChecked) {
                        QuestionsDomain.setAnswer30_1(index);
                        selectedOption2 = option;
                        question.answerIndex = index;
                      } else {
                        QuestionsDomain.setAnswer30_3(null);
                        selectedOption2 = "";
                      }
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
              Text(question.fourthQuestion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption3 == option,
                  onChanged: (isChecked) {
                    setState(() {
                      if (!isChecked) {
                        QuestionsDomain.setAnswer30_1(index);

                        selectedOption3 = option;
                        question.answerIndex = index;
                      } else {
                        QuestionsDomain.setAnswer30_4(null);
                        selectedOption3 = "";
                      }
                    });
                  },
                );
              }).toList()),
            ],
          ),
        ),
      ),
    );
  }
}
