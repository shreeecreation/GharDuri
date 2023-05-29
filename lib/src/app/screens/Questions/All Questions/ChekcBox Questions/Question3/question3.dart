import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';

class Question3 extends QuestionModel {
  int answerIndex = 0;
  int answerIndex1 = 0;
  String secondQuestion = "महिला";

  Question3({
    String questionName = '३. परिवार को संख्या',
    List<String> questionOption = const [
      "स्वास्थ चौकी पुर्नलाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)",
      "अस्पातल मा पुग्ना लाग्ने समय \n(१५ मिनेट - ३० मिनेट - १ घण्टा - १ घण्टाभण्डा बधि)"
    ],
  }) : super(questionName, questionOption);
}

class Question3Card extends StatefulWidget {
  Question3Card({Key? key}) : super(key: key);

  static List<Widget> textFields = []; // List to store the text fields
  static List<Widget> textFields1 = []; // List to store the text fields
  static List<TextEditingController> controllers = []; // List to store the text field controllers
  static List<TextEditingController> controllers1 = []; // List to store the text field controllers
  @override
  State<Question3Card> createState() => _Question3CardState();
}

final Question3 question = Question3();

class _Question3CardState extends State<Question3Card> {

  @override
  void initState() {
    super.initState();
    addTextFieldpurush();
    addTextFieldmahila();
  }

  void printTextFields() {
    for (final controller in Question3Card.controllers) {
      print(controller.text);
    }

    for (final controller in Question3Card.controllers1) {
      print(controller.text);
    }
  }

  void addTextFieldpurush() {
    final controller = TextEditingController();
    Question3Card.controllers.add(controller);
    final textField = SizedBox(
      width: 50,
      height: 35,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(),
          border: UnderlineInputBorder(),
        ),
      ),
    );
    setState(() {
      Question3Card.textFields.add(textField);
    });
  }

  void addTextFieldmahila() {
    final controller = TextEditingController();
    Question3Card.controllers1.add(controller);
    final textField = SizedBox(
      width: 50,
      height: 35,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(),
          border: UnderlineInputBorder(),
        ),
      ),
    );
    setState(() {
      Question3Card.textFields1.add(textField);
    });
  }

  @override
  void dispose() {
    for (final controller in Question3Card.controllers) {
      controller.dispose();
    }
    for (final controller in Question3Card.controllers1) {
      controller.dispose();
    }
    super.dispose();
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
              Row(
                children: [
                  Text(
                    question.questionName,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text("पुरुष", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          for (Widget textField in Question3Card.textFields) textField, // Add all the text fields
                          SizedBox(
                            width: 120,
                            child: IconButton(
                              onPressed: addTextFieldpurush, // Call the addTextField function to add a new text field
                              icon: const Icon(Icons.add_circle_rounded, color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      Text(
                        question.secondQuestion,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          for (Widget textField in Question3Card.textFields1) textField, // Add all the text fields
                          SizedBox(
                            width: 120,
                            child: IconButton(
                              onPressed: addTextFieldmahila, // Call the addTextField function to add a new text field
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
