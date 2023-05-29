import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';

class Question28 extends QuestionModel {
  int answerIndex = 0;

  Question28(
      {String questionName = '२८. परिवारको शैक्षिक स्थिति',
      List<String> questionOption = const [
        "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
        "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
      ]})
      : super(questionName, questionOption);
}

class Question28Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question28Card({super.key});

  @override
  State<Question28Card> createState() => _Question28CardState();
}

final Question28 question = Question28();

class _Question28CardState extends State<Question28Card> {
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
              const Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "क. आधारभुत तह पढ्नेको संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ख. कक्षा दशसम्म पढ्नेको संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ग. ‌कक्षा १२ सम्म पढ्नेको संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "घ. कक्षा १२ भन्दामाथीको संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
