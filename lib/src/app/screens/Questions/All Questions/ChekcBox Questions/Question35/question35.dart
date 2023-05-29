import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question35 extends QuestionModel {
  int answerIndex = 0;

  Question35(
      {String questionName = '३५. तपाईको परिवारका कुनै सदस्य स्थानीय कुनै संघसंस्था वा समूहमा आवद्ध हुनुहुन्छ ?',
      List<String> questionOption = const [
        "सामुदायिक संस्था",
        "कृषक समूह",
        "सामुदायिक वन उपभोक्ता समूह",
        "सहकारी संस्था",
        "नागरिक सचेतना केन्द्र",
        "परम्परागत समूह",
        "अन्य (नागरिक मञ्च, विभिन्न समिति...)",
        "प्यारालिगल कमिटि",
        "कुनैमा पनि नरहेको"
      ]})
      : super(questionName, questionOption);
}

class Question35Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question35Card({super.key});

  @override
  State<Question35Card> createState() => _Question35CardState();
}

final Question35 question = Question35();

class _Question35CardState extends State<Question35Card> {
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
                const SizedBox(height: 10),
                Column(
                  children: question.questionOption.map<Widget>((option) {
                    final index = question.questionOption.indexOf(option);
                    return OptionCheckBox(
                      title: option,
                      isChecked: selectedOption == option,
                      onChanged: () {
                        setState(() {
                          QuestionsDomain.setAnswer35(index);
                          selectedOption = option;
                          question.answerIndex = index;
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
