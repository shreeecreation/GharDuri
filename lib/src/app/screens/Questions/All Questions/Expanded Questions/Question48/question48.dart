import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion48 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion48(
      {String questionName = "४८. विगत ३ वर्ष भित्रमा तपाईंको परिवारका मानिसहरु प्रकोपवाट प्रभावित भएका छन् कि छैनन ?",
      List<String> questionOption = const [
        "बाढी ",
        "पहिरो",
        "असिना",
        "हुरीबतास",
        "आगलागी",
        "भूकम्प",
        "खडेरी",
        "अतिबृष्टी",
        "महामारी",
        "सलह किरा आदी",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class ExpQuestion48Card extends StatefulWidget {
  final ExpQuestion48 question = ExpQuestion48(); // Update the type to ExpandedQuestionModel

  ExpQuestion48Card({Key? key}) : super(key: key);

  @override
  ExpQuestion48CardState createState() => ExpQuestion48CardState();
}

class ExpQuestion48CardState extends State<ExpQuestion48Card> {
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
                        onChanged: (isChecked) {
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
                        onChanged: (isChecked) {
                          setState(() {
                            selectedOption = "छैन";
                            QuestionsDomain.setAnswer47(null);
                            widget.question.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (selectedOption == "छ") Text("यदि छ भने,", style: AppStyles.text18PxBold),
                  if (selectedOption == "छ")
                    Column(
                      children: (widget.question.questionOption)
                          .map((option) => OptionCheckBox(
                                title: option,
                                isChecked: option == (widget.question).questionOption[(widget.question).answerIndex],
                                onChanged: (isChecked) {
                                  setState(() {
                                    QuestionsDomain.setAnswer47((widget.question).questionOption.indexOf(option));

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
