import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question5 extends QuestionModel {
  int answerIndex = 0;

  Question5(
      {String questionName = '५. नजिकको स्वास्थ्य संस्थामा पुग्न लाग्ने समय ?',
      List<String> questionOption = const [
        "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
        "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
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
