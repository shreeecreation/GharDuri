import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ExpQuestion24 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion24(
      {String questionName = "२४. तपाईंको पररर्वारका कुनै बालबाललकामा लागू पदाथ ादव्र्ुयसनको लत रहे छ हक छैन ?",
      List<String> questionOption = const ["अ) धम्रुपान गनेको संख्या:", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion24Card extends StatefulWidget {
  final ExpQuestion24 question = ExpQuestion24(); // Update the type to ExpandedQuestionModel

  ExpQuestion24Card({Key? key}) : super(key: key);

  @override
  ExpQuestion24CardState createState() => ExpQuestion24CardState();
}

class ExpQuestion24CardState extends State<ExpQuestion24Card> {
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
                    const Column(
                      children: [
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "धुम्रपान गर्नेको संख्या:",
                            ),
                            SizedBox(
                              width: 30,
                              height: 20,
                              child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "मद्यपान गर्नेको संख्या:",
                            ),
                            SizedBox(
                              width: 30,
                              height: 20,
                              child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "नसालु पदार्थ गर्नेको संख्या:",
                            ),
                            SizedBox(
                              width: 30,
                              height: 20,
                              child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                            ),
                          ],
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
