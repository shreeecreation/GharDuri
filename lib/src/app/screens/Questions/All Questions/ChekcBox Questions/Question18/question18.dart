import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question18 extends QuestionModel {
  int answerIndex = 0;

  Question18(
      {String questionName = '१८. बालबालिकाहरु घरबाहिर काम गरेको भए गरेको ठाउँमा के कस्तो समस्या भोग्ने गरेका छन ?',
      List<String> questionOption = const [
        "गाली+गलौज",
        "कुटपिट",
        "खानामा भेदभाव",
        "यौन शोषण",
        "मनोवैज्ञानिक तनाव",
        "खेल्नमा भेदभाव वा खेल्न नदिने",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class Question18Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question18Card({super.key});

  @override
  State<Question18Card> createState() => _Question18CardState();
}

final Question18 question = Question18();

class _Question18CardState extends State<Question18Card> {
  List<String> selectedOptions = [];

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
                          if (!QuestionsDomain.qusetion18List.contains(option)) {
                            QuestionsDomain.qusetion18List.add(index);
                          }
                        } else {
                          selectedOptions.remove(option);
                          QuestionsDomain.qusetion18List.remove(index);
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
