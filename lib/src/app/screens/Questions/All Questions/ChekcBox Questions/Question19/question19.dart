import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question19 extends QuestionModel {
  int answerIndex = 0;

  Question19(
      {String questionName = ' १९. तपाईंको परिवारमा बालबालिकाले कमजोरी गरेमा के गर्नु हुन्छ ?',
      List<String> questionOption = const [
        "गाली",
        "कुटपिट",
        "खानामा भेदभाव",
        "कोठामा थुन्ने",
        "सम्झाउने",
        "  हेप्ने, निन्दा गर्ने वा मनोवैज्ञानिक तनाव दिने",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class Question19Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question19Card({super.key});

  @override
  State<Question19Card> createState() => _Question19CardState();
}

final Question19 question = Question19();

class _Question19CardState extends State<Question19Card> {
  var selectedOptions = [];
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
                          if (!QuestionsDomain.qusetion19List.contains(option)) {
                            QuestionsDomain.qusetion19List.add(index);
                          }
                        } else {
                          selectedOptions.remove(option);
                          QuestionsDomain.qusetion19List.remove(index);
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
