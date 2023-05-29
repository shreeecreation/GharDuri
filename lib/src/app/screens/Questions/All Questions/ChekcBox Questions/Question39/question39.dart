import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question39 extends QuestionModel {
  int answerIndex = 0;

  Question39(
      {String questionName = '३९. घरको अवस्था : (एकभन्दा बढी घर भएमा मूल घरको विवरणका आधारमा चिन्ह लगाउने)',
      List<String> questionOption = const [
        "खर वा फुसको छानो भएको",
        "टायल, झिँगटी वा स्लेटको छानो भएको",
        "जस्ता पाताको छानो भएको",
        "घर ढलान भएको",
      ]})
      : super(questionName, questionOption);
}

class Question39Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question39Card({super.key});

  @override
  State<Question39Card> createState() => _Question39CardState();
}

final Question39 question = Question39();

class _Question39CardState extends State<Question39Card> {
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
                          QuestionsDomain.setAnswer39(index);
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
