import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

import 'model/questions_model.dart';

class Question1 extends QuestionModel {
  int answerIndex = 0;

  Question1({String questionName = '१.१ परिवार मूलीको लिङ्ग', List<String> questionOption = const ["महिला", "परुुष ", "तेस्रो ललङ्गी"]})
      : super(questionName, questionOption);
}

class Question1Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final question;

  const Question1Card({super.key, required this.question});

  @override
  State<Question1Card> createState() => _Question1CardState();
}

TextEditingController mulikoName = TextEditingController();

class _Question1CardState extends State<Question1Card> {
  var selectedOption = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFFF1F1F1)), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("१ परिवार मूलीको नाम ", style: AppStyles.text18PxBold),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    height: 20,
                    child: TextField(
                      controller: TextControllers.question1muliKoname,
                      decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(widget.question.questionName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                children: widget.question.questionOption.map<Widget>((option) {
                  final index = widget.question.questionOption.indexOf(option);

                  return OptionCheckBox(
                    title: option,
                    isChecked: selectedOption == option,
                    onChanged: () {
                      setState(() {
                        String gender;
                        if (index == 0) {
                          gender = "female";
                        } else if (index == 1) {
                          gender = "male";
                        } else {
                          gender = "third_Gender";
                        }
                        print(gender);
                        QuestionsDomain.setGender(gender);
                        selectedOption = option;
                        widget.question.answerIndex = index;
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
