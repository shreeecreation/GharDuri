import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion15 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion15(
      {String questionName = "१५. गएको ३ वर्षभित्र तपाईंको परिवारमा कसैको विवाह भएको छ कि छै ?",
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion15Card extends StatefulWidget {
  final ExpQuestion15 question = ExpQuestion15(); // Update the type to ExpandedQuestionModel

  ExpQuestion15Card({Key? key}) : super(key: key);

  @override
  ExpQuestion15CardState createState() => ExpQuestion15CardState();
}

class ExpQuestion15CardState extends State<ExpQuestion15Card> {
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
                        onChanged: () {
                          setState(() {
                            selectedOption = "छ";
                            widget.question.answerIndex = 0;
                          });
                        },
                      ),
                      const SizedBox(width: 30),
                      OptionCheckBox(
                        title: "छैन",
                        isChecked: selectedOption == "छैन",
                        onChanged: () {
                          setState(() {
                            selectedOption = "छैन";
                            widget.question.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  if (selectedOption == "छ") Text("यदि छ भने ?", style: AppStyles.text18PxBold),
                  if (selectedOption == "छ")
                    Row(
                      children: [
                        Text("उमेर ", style: AppStyles.text18PxBold),
                        const SizedBox(width: 5),
                        const SizedBox(
                          width: 120,
                          height: 15,
                          child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
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
