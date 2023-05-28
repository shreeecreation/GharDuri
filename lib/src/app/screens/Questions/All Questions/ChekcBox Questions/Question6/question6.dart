import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';

class Question6 extends QuestionModel {
  int answerIndex = 0;

  Question6(
      {String questionName = '६. बितेको २ बर्षा भित्र जन्मेका बालबालिका को विवरन ?',
      List<String> questionOption = const [
        "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
        "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
      ]})
      : super(questionName, questionOption);
}

class Question6Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question6Card({super.key});

  @override
  State<Question6Card> createState() => _Question6CardState();
}

final Question6 question = Question6();

class _Question6CardState extends State<Question6Card> {
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
                      "६.क)  जन्मेको जीवित शिशुको जन्म सङ्ख्या",
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
                      "६.ख)  जन्मेको १ घण्टाभित्र दुध खुवाएको संख्या",
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
                      "६.ग)  ६ महिनासम्म आमाको दुधमात्र खुवाएको संख्या",
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
                      "७.ग  )  २ वर्षसम्म आमाको दुध खुवाएको संख्या",
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
