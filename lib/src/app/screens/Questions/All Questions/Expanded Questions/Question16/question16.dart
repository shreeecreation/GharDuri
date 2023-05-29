import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion16 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion16(
      {String questionName = "१६. तपाईको परिवारका १८ वर्षसम्मका बालबालिका अरुको घरमा काम गर्न बसेका छन ?",
      List<String> questionOption = const [
        "बालभरिया",
        "घरेलु बालश्रम अर्काको घरमा काम गर्ने ",
        "होटल+पसलमा काम गर्ने",
        "यातायात",
        "कारखाना+उद्योग",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class ExpQuestion16Card extends StatefulWidget {
  final ExpQuestion16 question = ExpQuestion16(); // Update the type to ExpandedQuestionModel

  ExpQuestion16Card({Key? key}) : super(key: key);

  @override
  ExpQuestion16CardState createState() => ExpQuestion16CardState();
}

class ExpQuestion16CardState extends State<ExpQuestion16Card> {
  var selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(16),
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
                  const SizedBox(height: 16),
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
                  const SizedBox(height: 16),
                  if (selectedOption == "छ") Text("यदि छन् भने के मा काम गर्छन ?", style: AppStyles.text18PxBold),
                  if (selectedOption == "छ")
                    Column(
                      children: (widget.question.questionOption)
                          .map((option) => OptionCheckBox(
                                title: option,
                                isChecked: option == (widget.question).questionOption[(widget.question).answerIndex],
                                onChanged: () {
                                  setState(() {
                                    (widget.question).answerIndex = (widget.question).questionOption.indexOf(option);
                                  });
                                },
                              ))
                          .toList(),
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
