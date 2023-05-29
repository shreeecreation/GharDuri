import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question46 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  int answerIndex2 = 0;
  int answerIndex3 = 0;

  Question46(
      {String questionName = '४६. तपाईंको परिवारमा निम्न कार्यहरु प्रायः कसले गर्दछ ?',
      List<String> questionOption = const [
        "घर व्यवहारसम्बन्धी विषयमा निर्णय",
        "घरायसी काममा संलग्न",
        "उद्योग व्यापारमा सहभागिता",
        "स्वर बोलाइसम्बन्धी अपाङ्गता",
      ]})
      : super(questionName, questionOption);
}

class Question46Card extends StatefulWidget {
  const Question46Card({super.key});

  @override
  State<Question46Card> createState() => _Question46CardState();
}

final Question46 question = Question46();

class _Question46CardState extends State<Question46Card> {
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
              const Text("महिला", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption == option,
                  onChanged: () {
                    setState(() {
                      QuestionsDomain.setAnswer461(index);
                      selectedOption = option;
                      question.answerIndex = index;
                    });
                  },
                );
              }).toList()),
              const SizedBox(height: 10),
              const Text("पुरुष", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                  children: question.questionOption.map<Widget>((option) {
                final index = question.questionOption.indexOf(option);
                return OptionCheckBox(
                  title: option,
                  isChecked: selectedOption1 == option,
                  onChanged: () {
                    setState(() {
                      QuestionsDomain.setAnswer462(index);

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
