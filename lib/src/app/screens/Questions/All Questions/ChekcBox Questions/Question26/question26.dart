import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question26 extends QuestionModel {
  int answerIndex = 0;

  Question26(
      {String questionName = '२६. मानिस बस्ने घर (मूल घर) र गाईवस्तुहरु बाँध्ने गोठ अलग्गै छ ?',
      List<String> questionOption = const [
        "छ",
        "छैन",
        "गोठ अलग्गै भए पनि गोठमाथि पनि सुत्ने गरेको छ",
      ]})
      : super(questionName, questionOption);
}

class Question26Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question26Card({super.key});

  @override
  State<Question26Card> createState() => _Question26CardState();
}

final Question26 question = Question26();

class _Question26CardState extends State<Question26Card> {
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
