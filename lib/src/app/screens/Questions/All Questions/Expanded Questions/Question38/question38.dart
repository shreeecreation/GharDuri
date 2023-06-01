import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion38 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion38(
      {String questionName = '३८. आजभन्दा पाँच वर्ष पहिले तपाईंको परिवारको बसोवास कहाँ थियो ?',
      List<String> questionOption = const [
        "सहरी सुविधाको लागि",
        "द्वन्दका कारण",
        "खेतीपाती गर्न",
        "व्यापार व्यवसाय गर्न",
        "बैवाहिक सम्बन्ध भएर",
        "रोजगारीका लागि",
        "प्राकृतिक विपत्तिबाट",
        "अन्य"
      ]})
      : super(questionName, questionOption);
}

class ExpQuestion38Card extends StatefulWidget {
  final ExpQuestion38 question = ExpQuestion38(); // Update the type to ExpandedQuestionModel

  ExpQuestion38Card({Key? key}) : super(key: key);

  @override
  ExpQuestion38CardState createState() => ExpQuestion38CardState();
}

class ExpQuestion38CardState extends State<ExpQuestion38Card> {
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
              Column(
                children: [
                  OptionCheckBox(
                    title: "अन्य स्थानमा",
                    isChecked: selectedOption == "अन्य स्थानमा",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "अन्य स्थानमा";
                        widget.question.answerIndex = 0;
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  OptionCheckBox(
                    title: "यसै स्थानमा",
                    isChecked: selectedOption == "यसै स्थानमा",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "यसै स्थानमा";
                        QuestionsDomain.setAnswer38(null);
                        widget.question.answerIndex = 1;
                      });
                    },
                  ),
                ],
              ),
              if (selectedOption == "अन्य स्थानमा") Text("अन्य स्थानमा हो भने", style: AppStyles.text18PxBold),
              if (selectedOption == "अन्य स्थानमा")
                Column(
                  children: (widget.question.questionOption)
                      .map((option) => OptionCheckBox(
                            title: option,
                            isChecked: option == (widget.question).questionOption[(widget.question).answerIndex],
                            onChanged: (isChecked) {
                              setState(() {
                                QuestionsDomain.setAnswer38((widget.question).questionOption.indexOf(option));
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
