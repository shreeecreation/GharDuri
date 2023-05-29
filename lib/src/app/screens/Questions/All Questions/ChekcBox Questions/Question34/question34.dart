import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question34 extends QuestionModel {
  int answerIndex = 0;

  Question34(
      {String questionName =
          '३४. तपाईका घरका १८ वर्षभन्दा कम उमेरका कतिजना बालबालिका देहायको निकायमा प्रतिनिधि वा सदस्य रहेका छन् ? यदी छन भने कुन मा?',
      List<String> questionOption = const [
        "क. स्थानिय तह/योजना तर्जुमा वा कार्यान्वयन समिति",
        "ख. वडा नागरिक मञ्च",
        "ग. विद्यालय/स्वास्थ्य संस्था व्यवस्थापन समिति",
        "घ. बाल संरक्षण समिति",
        "ङ. बाल समुह वा बाल क्लब,\n बालमैत्री स्थानिय शासन समिति वा बाल संजाल"
      ]})
      : super(questionName, questionOption);
}

class Question34Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question34Card({super.key});

  @override
  State<Question34Card> createState() => _Question34CardState();
}

final Question34 question = Question34();

class _Question34CardState extends State<Question34Card> {
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
