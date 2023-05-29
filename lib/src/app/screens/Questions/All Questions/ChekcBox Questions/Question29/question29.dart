import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';

class Question29 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  String secondQuestion = " २९.१  पालिका बाहिरका विद्यालयमा अध्ययनरत संख्या";

  Question29(
      {String questionName = '२९. विद्यालयस्तरमा अध्ययन गरिरहेका बालबालिकाको विवरण',
      List<String> questionOption = const [
        "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
        "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
      ]})
      : super(questionName, questionOption);
}

class Question29Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question29Card({super.key});

  @override
  State<Question29Card> createState() => _Question29CardState();
}

final Question29 question = Question29();

class _Question29CardState extends State<Question29Card> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("१. प्रारम्भिक बालबिकास संख्या:"),
                    SizedBox(
                        width: 30,
                        height: 20,
                        child: TextField(
                            controller: TextControllers.q291,
                            decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder()))),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "२. आधारभुत तह संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(
                          controller: TextControllers.q292,
                          decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "३. कक्षा दशसम्म संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(
                          controller: TextControllers.q293,
                          decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "४. कक्षा १२ सम्म संख्या:",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(
                          controller: TextControllers.q294,
                          decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(question.secondQuestion, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "१. प्रारम्भिक बालबिकास संख्या:",
                        ),
                        SizedBox(
                          width: 30,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q2911,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("२. आधारभुत तह संख्या:"),
                        SizedBox(
                          width: 30,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q2921,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("३. कक्षा दशसम्म संख्या:"),
                        SizedBox(
                          width: 30,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q2921,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("४. कक्षा १२ सम्म संख्या:"),
                        SizedBox(
                          width: 30,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q2941,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                        ),
                      ],
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
