import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question21 extends QuestionModel {
  int answerIndex = 0;

  Question21(
      {String questionName =
          '२१. एक वर्षभित्र तपाईंको परिवारमा महिला तथा बालबालिका उपर हिंसा तथा सामाजिक कुरिती सम्बन्धी निम्न कुनै घटना घटेका छन+छैनन् ?',
      List<String> questionOption = const [
        "दाईजोसम्बन्धी",
        "वहुविवाह",
        "घरायसी हिंसा",
        "बालविवाह",
        "बलात्कार",
        "महिला+बालबालिका बेचविखन",
        "कुनै पनि घटना नघटेको"
      ]})
      : super(questionName, questionOption);
}

class Question21Card extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables

  const Question21Card({super.key});

  @override
  State<Question21Card> createState() => _Question21CardState();
}

final Question21 question = Question21();

class _Question21CardState extends State<Question21Card> {
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
                          QuestionsDomain.setAnswer21(index);
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
