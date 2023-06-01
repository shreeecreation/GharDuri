import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion13 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion13(
      {String questionName =
          "१३. तपाईंको परिवारका १ वर्ष मुनिकाको मासिक र १ वर्ष भन्दा माथि ५ वर्ष सम्मका बालबालिकाहरुको त्रैमासिक रुपमा तौल लिने गरिएको छ ?",
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion13Card extends StatefulWidget {
  final ExpQuestion13 question = ExpQuestion13(); // Update the type to ExpandedQuestionModel

  ExpQuestion13Card({Key? key}) : super(key: key);

  @override
  ExpQuestion13CardState createState() => ExpQuestion13CardState();
}

class ExpQuestion13CardState extends State<ExpQuestion13Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(13),
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
                  const SizedBox(height: 13),
                  Row(
                    children: [
                      OptionCheckBox(
                        title: "छ",
                        isChecked: selectedOption == "छ",
                        onChanged: (isChecked) {
                          setState(() {
                            QuestionsDomain.setAnswer13(1);
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
                            QuestionsDomain.setAnswer13(null);

                            widget.question.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
