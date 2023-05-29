import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question40 extends QuestionModel {
  int answerIndex = 0;

  Question40(
      {String questionName = '४०. तपाईंको घरमा खाना पकाउन प्रयोग हुने प्रमुख इन्धन कुन हो ?',
      List<String> questionOption = const ["दाउरा", "गोवरग्याँस", "एल.पि. ग्याँस", "विद्युत", "अन्य"]})
      : super(questionName, questionOption);
}

class Question40Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question40Card({super.key});

  @override
  State<Question40Card> createState() => _Question40CardState();
}

final Question40 question = Question40();

class _Question40CardState extends State<Question40Card> {
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
                          QuestionsDomain.setAnswer40(index);
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
