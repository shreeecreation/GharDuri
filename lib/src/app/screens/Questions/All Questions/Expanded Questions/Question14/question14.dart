import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion14 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion14(
      {String questionName = "१४. आफ्नो बच्चाको जन्मदर्ता गराउनु भएको छ कि छैन ?", List<String> questionOption = const ["गराएको", "गराएको"]})
      : super(questionName, questionOption);
}

class ExpQuestion14Card extends StatefulWidget {
  final ExpQuestion14 question = ExpQuestion14(); // Update the type to ExpandedQuestionModel

  ExpQuestion14Card({Key? key}) : super(key: key);

  @override
  ExpQuestion14CardState createState() => ExpQuestion14CardState();
}

class ExpQuestion14CardState extends State<ExpQuestion14Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Padding(
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
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      OptionCheckBox(
                        title: "छ",
                        isChecked: selectedOption == "छ",
                        onChanged: (isChecked) {
                          setState(() {
                            QuestionsDomain.setAnswer14(1);

                            selectedOption = "छ";
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
                            QuestionsDomain.setAnswer14(null);

                            widget.question.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
