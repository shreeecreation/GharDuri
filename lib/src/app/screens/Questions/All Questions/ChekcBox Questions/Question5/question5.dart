import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question5 extends QuestionModel {
  int answerIndex = 0;
  String secondQuestion = "५.२ अस्पातल मा पुग्नलाग्ने समय";
  Question5(
      {String questionName = '५. नजिकको स्वास्थ्य संस्थामा पुग्नलाग्ने समय ?',
      List<String> questionOption = const [
        " १५ मिनेट ",
        " ३० मिनेट",
        "१ घण्टा",
        "१ घण्टाभन्दा बढी",
      ]})
      : super(questionName, questionOption);
}

class Question5Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question5Card({super.key});

  @override
  State<Question5Card> createState() => _Question5CardState();
}

final Question5 question = Question5();

class _Question5CardState extends State<Question5Card> {
  var selectedOption = "";
  var selectedOption1 = "";
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
              const Text("५.१ स्वास्थ चौकी पुर्नलाग्ने समय", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Column(
                children: question.questionOption.map<Widget>((option) {
                  final index = question.questionOption.indexOf(option);

                  return OptionCheckBox(
                    title: option,
                    isChecked: selectedOption == option,
                    onChanged: (isChecked) {
                      setState(() {
                        if (!isChecked) {
                          QuestionsDomain.setTime1(index);
                          selectedOption = option;
                          question.answerIndex = index;
                        } else {
                          selectedOption = "";
                          QuestionsDomain.setTime1(null);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              Text(question.secondQuestion, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Column(
                children: question.questionOption.map<Widget>((option) {
                  final index = question.questionOption.indexOf(option);

                  return OptionCheckBox(
                    title: option,
                    isChecked: selectedOption1 == option,
                    onChanged: (isChecked) {
                      setState(() {
                        if (!isChecked) {
                          QuestionsDomain.setTime2(index);
                          selectedOption1 = option;
                          question.answerIndex = index;
                        } else {
                          selectedOption1 = "";
                          QuestionsDomain.setTime2(null);
                        }
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
