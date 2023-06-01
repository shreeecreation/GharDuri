import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question44 extends QuestionModel {
  int answerIndex = 0;

  Question44(
      {String questionName = '४४. तपाईंको परिवारलाई आफ्नो उत्पादन÷आम्दानीले वर्षमा कति महिना खान पुग्छ ?',
      List<String> questionOption = const ["३ महिनाभन्दा कम खान पुग्ने", "३ – ६ महिना खान पुग्ने", "६ – ९ महिना खान पुग्ने", "९ – १२ महिना खान पुग्ने", "वचत हुने"]})
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
                      onChanged: (isChecked) {
                        setState(() {
                          QuestionsDomain.setAnswer44(index);
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
