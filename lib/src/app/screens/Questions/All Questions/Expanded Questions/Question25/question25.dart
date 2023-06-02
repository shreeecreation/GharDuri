import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion25 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion25(
      {String questionName = "२५.  बालबालिका बस्ने, पढ्ने कोठा अलग्गै छ ",
      List<String> questionOption = const ["अ) धम्रुपान गनेको संख्या:", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion25Card extends StatefulWidget {
  final ExpQuestion25 question = ExpQuestion25(); // Update the type to ExpandedQuestionModel

  ExpQuestion25Card({Key? key}) : super(key: key);

  @override
  ExpQuestion25CardState createState() => ExpQuestion25CardState();
}

class ExpQuestion25CardState extends State<ExpQuestion25Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(15),
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
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      OptionCheckBox(
                        title: "छ",
                        isChecked: selectedOption == "छ",
                        onChanged: (isChecked) {
                          setState(() {
                            QuestionsDomain.setAnswer25(1);
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
                            QuestionsDomain.setAnswer25(null);

                            selectedOption = "छैन";
                            widget.question.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
