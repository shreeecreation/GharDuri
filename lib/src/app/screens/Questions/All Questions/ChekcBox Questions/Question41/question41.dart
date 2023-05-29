import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/model/questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class Question41 extends QuestionModel {
  int answerIndex = 0;

  Question41(
      {String questionName = '४१. तपाइंको घरमा संचारका साधनहरु के के रहेका छन् ?(वहु उत्तर)',
      List<String> questionOption = const [
        "क. रेडियो",
        "ग. टेलिफोन",
        "ग. टेलिफोन",
        "घ. मोबाइल",
        "ङ. इमेल+इन्टरनेट",
        "च. नियमित आउने पत्रपत्रिका",
        "छ. अन्य"
      ]})
      : super(questionName, questionOption);
}

class Question41Card extends StatefulWidget {
  const Question41Card({Key? key}) : super(key: key);

  @override
  State<Question41Card> createState() => _Question41CardState();
}

class _Question41CardState extends State<Question41Card> {
  final Question41 question = Question41();
  List<String> selectedOptions = [];

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
              Column(
                children: question.questionOption.map<Widget>((option) {
                  final index = question.questionOption.indexOf(option);
                  return MultipleCheckboxWidget(
                    option: option,
                    isSelected: selectedOptions.contains(option),
                    onChanged: (isChecked) {
                      setState(() {
                      if (isChecked) {
                          selectedOptions.add(option);
                          // ignore: iterable_contains_unrelated_type
                          if (!QuestionsDomain.qusetion41List.contains(option)) {
                            QuestionsDomain.qusetion41List.add(index);
                          }
                        } else {
                          selectedOptions.remove(option);
                          QuestionsDomain.qusetion41List.remove(index);
                        }
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
