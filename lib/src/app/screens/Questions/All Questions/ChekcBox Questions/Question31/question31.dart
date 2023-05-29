import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question31 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  int answerIndex2 = 0;
  int answerIndex3 = 0;
  String firstQuestion = "३०. घरबाट विद्यालय जान लाग्ने समय (कक्षा पाँचसम्म)";
  String secondQuestion = "३०.१ घरबाट विद्यालय जान लाग्ने समय (आधारभुत तह)";
  String thirdQuestion = "३०.२ घरबाट विद्यालय जान लाग्ने समय (कक्षा दशसम्म)";
  String fourthQuestion = "३०.३ घरबाट विद्यालय जान लाग्ने समय (माध्यामिक तह)";

  Question31(
      {String questionName = ' ३१. बीचैमा विद्यालय जान छोडेका ६ – १५ वर्ष उमेर समूहका बालबालिकाहरुका संख्या र कारण',
      List<String> questionOption = const ["१५ मिनेट भन्दा कम", "१५-३० मिनेट", "३० मिनेट – १ घण्टा", "१ घण्टाभन्दा बढी"]})
      : super(questionName, questionOption);
}

class Question31Card extends StatefulWidget {
  const Question31Card({super.key});

  @override
  State<Question31Card> createState() => _Question31CardState();
}

final Question31 question = Question31();

class _Question31CardState extends State<Question31Card> {
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
              Row(
                children: [
                  Text("बालक संख्या ", style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  const SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("विद्यालय छोड्नुको कारण", style: AppStyles.text18PxBold),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(decoration: InputDecoration()),
                    ),
                  ],
                ),
              ]),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("बालिका संख्या ", style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  const SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("विद्यालय छोड्नुको कारण", style: AppStyles.text18PxBold),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(decoration: InputDecoration()),
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
