import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question4 extends QuestionModel {
  int answerIndex = 0;

  Question4(
      {String questionName = '४. परिवारको कुनै सदस्य विरामी भएमा उपचारका लागि सबैभन्दा पहिला कहाँ जानुहुन्छ ?',
      List<String> questionOption = const ["लामा, धामी, झाँक्री", "स्वास्थ चौकी ", "स्वास्थ चौकी", "अस्पताल"]})
      : super(questionName, questionOption);
}

class Question4Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question4Card({super.key});

  @override
  State<Question4Card> createState() => _Question4CardState();
}

final Question4 question = Question4();

class _Question4CardState extends State<Question4Card> {
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
              Column(
                children: question.questionOption.map<Widget>((option) {
                  final index = question.questionOption.indexOf(option);

                  return OptionCheckBox(
                    title: option,
                    isChecked: selectedOption == option,
                    onChanged: () {
                      setState(() {
                        QuestionsDomain.setPlace(index);
                        selectedOption = option;
                        question.answerIndex = index;
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
