import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question17 extends QuestionModel {
  int answerIndex = 0;

  Question17(
      {String questionName = '१७. तपाइको यहाको बसोबास आफ्नै घर हो कि डेरामा हो ?',
      List<String> questionOption = const ["यहि पालिका भित्र", "पालिका बाहिर"]})
      : super(questionName, questionOption);
}

class Question17Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question17Card({super.key});

  @override
  State<Question17Card> createState() => _Question17CardState();
}

final Question17 question = Question17();

class _Question17CardState extends State<Question17Card> {
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(question.questionName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  OptionCheckBox(
                    title: "डेरामा",
                    isChecked: selectedOption == "डेरामा",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "डेरामा";
                        question.answerIndex = 0;
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  OptionCheckBox(
                    title: "आफ्नै घर",
                    isChecked: selectedOption == "आफ्नै घर",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "आफ्नै घर";
                        question.answerIndex = 1;
                        QuestionsDomain.setAnswer17(null);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (selectedOption == "डेरामा") Text("यदि डेरामा हो भने स्थायि बसोबास कहाँ हो ?", style: AppStyles.text16Px),
              if (selectedOption == "डेरामा")
                Column(
                  children: (question.questionOption)
                      .map((option) => OptionCheckBox(
                            title: option,
                            isChecked: option == (question).questionOption[(question).answerIndex],
                            onChanged: (isChecked) {
                              setState(() {
                                QuestionsDomain.setAnswer17((question).questionOption.indexOf(option));
                                (question).answerIndex = (question).questionOption.indexOf(option);
                              });
                            },
                          ))
                      .toList(),
                ),
            ]),
          ]),
        ),
      ),
    );
  }
}
