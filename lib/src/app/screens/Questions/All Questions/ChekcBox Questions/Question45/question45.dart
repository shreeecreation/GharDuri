import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question45 extends QuestionModel {
  int answerIndex = 0;

  Question45(
      {String questionName = '४५. ऋण लिएको भए कुन उद्देश्यका लागि लिनु भएको हो ?',
      List<String> questionOption = const [
        "घरायसी कार्य वा घर खर्चदाउरा",
        "कृषि तथा पशुपालन व्यवसाय गर्न",
        "उद्योग व्यापार",
        "बैदेशिक रोजगारी",
        "सामाजिक तथा धार्मिक कार्य गर्न",
        "शिक्षा",
        "औषधि उपचार",
        "विवाह, व्रतवन्ध वा यस्तै व्यावहारिक खर्च",
        "गोवर ग्याँस, सोलार, विजुली आदि राख्न",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class Question45Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question45Card({super.key});

  @override
  State<Question45Card> createState() => _Question45CardState();
}

final Question45 question = Question45();

class _Question45CardState extends State<Question45Card> {
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
