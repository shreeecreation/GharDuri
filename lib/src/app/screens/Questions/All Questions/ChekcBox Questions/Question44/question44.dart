import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question44 extends QuestionModel {
  int answerIndex = 0;

  Question44(
      {String questionName = '४४. तपाईंको परिवारका सदस्यहरु कुन कुन पेशा (रोजगारी) मा संलग्न हुनुहुन्छ ?',
      List<String> questionOption = const ["कृषि", "व्यापार", "जागिर", "ज्याला मजदुरी", "उद्योग", "बैदेशिक रोजगार"]})
      : super(questionName, questionOption);
}

class Question44Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question44Card({super.key});

  @override
  State<Question44Card> createState() => _Question44CardState();
}

final Question44 question = Question44();

class _Question44CardState extends State<Question44Card> {
  var selectedOption = "";
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
              Text(question.questionName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(children: [
                const SizedBox(height: 10),
                Column(
                  children: question.questionOption.map<Widget>((option) {
                    final index = question.questionOption.indexOf(option);
                    return OptionCheckBox(
                      title: option,
                      isChecked: selectedOption == option,
                      onChanged: () {
                        setState(() {
                          selectedOption = option;
                          question.answerIndex = index;
                        });
                      },
                    );
                  }).toList(),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}