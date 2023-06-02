import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question50 extends QuestionModel {
  int answerIndex = 0;

  Question50(
      {String questionName = '५०. विद्यालय जाँदा आउँदा बालबालिकालाई के को जोखिम रहेको छ ?',
      List<String> questionOption = const ["बाढी", "पहिरो", "वन्यजन्तु", "भिरबाट लढ्ने", "सवारी साधनको जोखिम" "अन्य"]})
      : super(questionName, questionOption);
}

class Question50Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question50Card({super.key});

  @override
  State<Question50Card> createState() => _Question50CardState();
}

final Question50 question = Question50();

class _Question50CardState extends State<Question50Card> {
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
                            QuestionsDomain.setAnswer50(index);
                            selectedOption = option;
                            question.answerIndex = index;
                          } else {
                          QuestionsDomain.setAnswer50(null);
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
