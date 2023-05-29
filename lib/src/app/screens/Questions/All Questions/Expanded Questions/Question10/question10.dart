import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion10 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion10(
      {String questionName = "१०. बितेको १ बर्षभित्र तपाईंको परिवार्मा ५ बर्षमुनिको  कुनै बाल्बालिकको मृत्यु भयको छ ? (रोग्)",
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion10second extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion10second(
      {String questionName = "१०.१ बितेको १ बर्षभित्र तपाईंको परिवार्मा ५ बर्षमुनिको  कुनै बाल्बालिकको मृत्यु भयको छ ? (दुर्घटना)",
      List<String> questionOption = const ["क्यान्सर", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion10Card extends StatefulWidget {
  final ExpQuestion10 question = ExpQuestion10(); // Update the type to ExpandedQuestionModel
  final ExpQuestion10second question1 = ExpQuestion10second(); // Update the type to ExpandedQuestionModel

  ExpQuestion10Card({Key? key}) : super(key: key);

  @override
  ExpQuestion10CardState createState() => ExpQuestion10CardState();
}

class ExpQuestion10CardState extends State<ExpQuestion10Card> {
  var selectedOption = "";
  var selectedOption1 = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(10),
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
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
                  if (selectedOption == "छ") Text("यदि छ भने ?", style: AppStyles.text16Px),
                  if (selectedOption == "छ")
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" संख्या", style: AppStyles.text16Px),
                        SizedBox(
                          width: 40,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q101,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.question1.questionName,
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
                        isChecked: selectedOption1 == "छ",
                        onChanged: () {
                          setState(() {
                            selectedOption1 = "छ";
                            widget.question1.answerIndex = 0;
                          });
                        },
                      ),
                      const SizedBox(width: 30),
                      OptionCheckBox(
                        title: "छैन",
                        isChecked: selectedOption1 == "छैन",
                        onChanged: () {
                          setState(() {
                            selectedOption1 = "छैन";
                            widget.question1.answerIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (selectedOption1 == "छ") Text("यदि छ भने ?", style: AppStyles.text16Px),
                  if (selectedOption1 == "छ")
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" संख्या", style: AppStyles.text16Px),
                        SizedBox(
                          width: 40,
                          height: 20,
                          child: TextField(
                              controller: TextControllers.q102,
                              decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
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
