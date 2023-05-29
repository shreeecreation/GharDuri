import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question17 extends QuestionModel {
  int answerIndex = 0;

  Question17(
      {String questionName = '१७. तपाईको परिवारका बालबालिकाहरुले कस्ता प्रकारका बालश्रम गरिरहेका छन् ?',
      List<String> questionOption = const [
        "बालभरिया",
        "घरेलु बालश्रम अर्काको घरमा काम गर्ने",
        "होटल+पसलमा काम गर्ने",
        "यातायात",
        "कारखाना+उद्योग",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class Question17Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question17Card({super.key});

  @override
  State<Question17Card> createState() => _Question17CardState();
}

final Question17 question = Question17();

class _Question17CardState extends State<Question17Card> {
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
