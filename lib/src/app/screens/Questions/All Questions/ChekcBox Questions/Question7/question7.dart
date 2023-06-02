import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';

class Question7 extends QuestionModel {
  int answerIndex = 0;

  Question7(
      {String questionName = '७. बितेको १ वर्षभित्रको तपाइको परिवार मा रहेका गर्भवती महिलाको स्वास्थ्य अवस्था बारे जानकारी',
      List<String> questionOption = const ["स्वास्थ्य संस्थामा", "घरमा स्वास्थ्य कर्मीको सहयोगमा", "घरमा स्वास्थ्य कर्मीको सहयोगबिना", "अन्य"]})
      : super(questionName, questionOption);
}

class Question7Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question7Card({super.key});

  @override
  State<Question7Card> createState() => _Question7CardState();
}

final Question7 question = Question7();

class _Question7CardState extends State<Question7Card> {
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
                    const Text(
                      "क)  कति पटक गर्भवती परिक्षण गरेको ",
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: TextField(
                          controller: TextControllers.q71,
                          decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text("७ ख) प्रसुति कहा भयेको हो", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: question.questionOption.map<Widget>((option) {
                    final index = question.questionOption.indexOf(option);

                    return OptionCheckBox(
                      title: option,
                      isChecked: selectedOption == option,
                      onChanged: (isChecked) {
                        setState(() {
                          if (!isChecked) {
                            QuestionsDomain.setAnswer2(index);
                            selectedOption = option;
                            question.answerIndex = index;
                          } else {
                            selectedOption = "";
                            QuestionsDomain.setAnswer2(null);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
