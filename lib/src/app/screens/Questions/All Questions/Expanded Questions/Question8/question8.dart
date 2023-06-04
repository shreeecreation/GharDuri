import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion8 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion8(
      {String questionName = '८. तपाईको परिवारको १८ वर्षभन्दा मुनिको सदस्यलाई कुनै दीर्घ रोग लागेको छ ?',
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion8Card extends StatefulWidget {
  final ExpQuestion8 question = ExpQuestion8(); // Update the type to ExpandedQuestionModel

  ExpQuestion8Card({Key? key}) : super(key: key);

  @override
  ExpQuestion8CardState createState() => ExpQuestion8CardState();
}

class ExpQuestion8CardState extends State<ExpQuestion8Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                  fontSize: 18,
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
                        QuestionsDomain.setAnswer8(1);

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
                        QuestionsDomain.setAnswer8(null);
                      });
                    },
                  ),
                ],
              ),
              if (selectedOption == "छ")
                Column(
                  children: (widget.question.questionOption)
                      .map((option) => OptionCheckBox(
                            title: option,
                            isChecked: option == (widget.question).questionOption[(widget.question).answerIndex],
                            onChanged: (isChecked) {
                              setState(() {
                                QuestionsDomain.setAnswer8((widget.question).questionOption.indexOf(option) + 1);
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
