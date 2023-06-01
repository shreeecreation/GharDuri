import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question49 extends QuestionModel {
  int answerIndex = 0;

  Question49(
      {String questionName = '४९. तपाइको बालबालिका पढ्ने विद्यालय कुन प्रकोपको जोखिममा रहेको छ?',
      List<String> questionOption = const ["बाढी", "पहिरो", "भुकम्प", "आगलागी", "अन्य"]})
      : super(questionName, questionOption);
}

class Question49Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question49Card({super.key});

  @override
  State<Question49Card> createState() => _Question49CardState();
}

final Question49 question = Question49();

class _Question49CardState extends State<Question49Card> {
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
                          QuestionsDomain.setAnswer49(index);
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
