import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion9 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion9(
      {String questionName = "९. तपाईको परिवारमा दीर्घ रोगको कारण विगत १० वर्षमा १८ वर्ष भन्दामुनिका कुनै सदस्यको मृत्यु भएको छ ?",
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion9Card extends StatefulWidget {
  final ExpQuestion9 question = ExpQuestion9(); // Update the type to ExpandedQuestionModel

  ExpQuestion9Card({Key? key}) : super(key: key);

  @override
  ExpQuestion9CardState createState() => ExpQuestion9CardState();
}

class ExpQuestion9CardState extends State<ExpQuestion9Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
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
                widget.question.questionName,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  OptionCheckBox(
                    title: "छ",
                    isChecked: selectedOption == "छ",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "छ";
                        QuestionsDomain.setAnswer9(1);

                        widget.question.answerIndex = 0;
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  OptionCheckBox(
                    title: "छैन",
                    isChecked: selectedOption == "छैन",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "छैन";
                        widget.question.answerIndex = 1;
                        QuestionsDomain.setAnswer9(null);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (selectedOption == "छ") const Text("यदि छ भने कुन रोगको कारण मृत्यु भएको थियो?"),
              if (selectedOption == "छ")
                Column(
                  children: (widget.question.questionOption)
                      .map((option) => OptionCheckBox(
                            title: option,
                            isChecked: option == (widget.question).questionOption[(widget.question).answerIndex],
                            onChanged: (isChecked) {
                              setState(() {
                                QuestionsDomain.setAnswer9((widget.question).questionOption.indexOf(option));
                                (widget.question).answerIndex = (widget.question).questionOption.indexOf(option);
                              });
                            },
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
