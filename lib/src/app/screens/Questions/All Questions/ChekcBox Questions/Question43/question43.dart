import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question43 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  int answerIndex2 = 0;
  int answerIndex3 = 0;


  Question43(
      {String questionName =
          ' ४३. तपाईको परिवारमा १८ वर्षभन्दा कम उमेरका शारीरिक तथा मानसिक हिसाबले अपांगता भएका सदस्यहरु भएमा तलको विवरण दिनुहोस् ।',
      List<String> questionOption = const [
        "शारीरिक अपाङ्गता",
        "दृष्टिविहिन र न्यन दृष्टिविहिन",
        "सुस्त श्रवण तथा बहिरा",
        "स्वर बोलाइसम्बन्धी अपाङ्गता",
        "मानसिक/बौद्दिकअपाङ्गता",
        "श्रवण र दृष्टिविहिन (दुवै)",
        "बहु अपाङ्गता"
      ]})
      : super(questionName, questionOption);
}

class Question43Card extends StatefulWidget {
  const Question43Card({super.key});

  @override
  State<Question43Card> createState() => _Question43CardState();
}

final Question43 question = Question43();

class _Question43CardState extends State<Question43Card> {
  var selectedOption = "";
  var selectedOption1 = "";
  var selectedOption2 = "";
  var selectedOption3 = "";
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
              const Text("बालक", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption == option,
                  onChanged: () {
                    setState(() {
                      QuestionsDomain.setAnswer431(index);
                      selectedOption = option;
                      question.answerIndex = index;
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
              const Text("बालिका", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption1 == option,
                  onChanged: () {
                    setState(() {
                      QuestionsDomain.setAnswer432(index);

                      selectedOption1 = option;
                      question.answerIndex = index;
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
