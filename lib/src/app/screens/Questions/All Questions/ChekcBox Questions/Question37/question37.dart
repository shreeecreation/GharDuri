import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question37 extends QuestionModel {
  int answerIndex = 0;

  Question37(
      {String questionName = '३७. परिवारको मुख्य पेशा (एकमा मात्र चिन्ह लगाउने)',
      List<String> questionOption = const [
        "कृषि +पशुपालन+फलफूल खेती",
        "व्यापार व्यवसाय",
        "सेवा+नोकरी",
        "ज्याला+मजदुरी",
        "विप्रेषण (विदेशबाट पठाएको रकम)",
        "अन्य",
      ]})
      : super(questionName, questionOption);
}

class Question37Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question37Card({super.key});

  @override
  State<Question37Card> createState() => _Question37CardState();
}

final Question37 question = Question37();

class _Question37CardState extends State<Question37Card> {
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
                          if (!isChecked) {
                            QuestionsDomain.setAnswer37(index);
                            selectedOption = option;
                            question.answerIndex = index;
                          } else {
                            QuestionsDomain.setAnswer37(null);
                            selectedOption = "";
                          }
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
