import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question42 extends QuestionModel {
  int answerIndex = 0;

  Question42(
      {String questionName = '४२. तपाईंको परिवारका सदस्यहरु कुन कुन पेशा (रोजगारी) मा संलग्न हुनुहुन्छ ?',
      List<String> questionOption = const ["कृषि", "व्यापार", "जागिर", "मोबाइल", "ज्याला मजदुरी", "उद्योग", "बैदेशिक रोजगार"]})
      : super(questionName, questionOption);
}

class Question42Card extends StatefulWidget {
  const Question42Card({Key? key}) : super(key: key);

  @override
  State<Question42Card> createState() => _Question42CardState();
}

class _Question42CardState extends State<Question42Card> {
  final Question42 question = Question42();
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.questionName,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: question.questionOption.map<Widget>((option) {
                  final index = question.questionOption.indexOf(option);
                  return MultipleCheckboxWidget(
                    option: option,
                    isSelected: selectedOptions.contains(option),
                    onChanged: (isChecked) {
                      setState(() {
                        if (isChecked) {
                          selectedOptions.add(option);
                        } else {
                          selectedOptions.remove(option);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
