import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';

class Question33 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;

  Question33({
    String questionName = '३३. तपाईंको परिवारका बालबालिकाहरु बाल क्लव÷संगठन आदिमा आबद्धता रहेका छन् ? छन भने क्लबको नाम उल्लेख गर्नुहोस।',
    List<String> questionOption = const [
      "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
      "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
    ],
  }) : super(questionName, questionOption);
}

class Question33Card extends StatefulWidget {
  const Question33Card({Key? key}) : super(key: key);

  static List<Widget> textFields = []; // List to store the text fields
  static List<TextEditingController> controllers = []; // List to store the text field controllers
  @override
  State<Question33Card> createState() => _Question33CardState();
}

final Question33 question = Question33();

class _Question33CardState extends State<Question33Card> {
  @override
  void initState() {
    super.initState();
    Question33Card.textFields.clear();
    Question33Card.controllers.clear();
    addTextFieldpurush();
  }

  void addTextFieldpurush() {
    final controller = TextEditingController();
    Question33Card.controllers.add(controller);
    final textField = SizedBox(
      width: 150,
      height: 35,
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(),
          border: UnderlineInputBorder(),
        ),
      ),
    );
    setState(() {
      Question33Card.textFields.add(textField);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.questionName,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          for (Widget textField in Question33Card.textFields) textField, // Add all the text fields
                          SizedBox(
                            width: 150,
                            child: IconButton(
                              onPressed: addTextFieldpurush, // Call the addTextField function to add a new text field
                              icon: const Icon(Icons.add_circle_rounded, color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// ३३. तपाईंको परिवारका बालबालिकाहरु बाल क्लव÷संगठन आदिमा आबद्धता रहेका छन् ? छन भने क्लबको नाम उल्लेख गर्नुहोस।