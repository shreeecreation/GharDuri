import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/model/expanded_questions_model.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

class ExpQuestion32 extends ExpandedQuestionModel {
  int answerIndex = 0;
  int answeranswerIndex = 0;

  ExpQuestion32(
      {String questionName = " ३२. परिवारमा बालबालिकासँग सम्बन्धित कुनै विषयमा निर्णय गर्दा उनीहरुलाई पनि सहभागी गराउने गर्नु भएको छ ?",
      List<String> questionOption = const ["अ) धम्रुपान गनेको संख्या:", "मधुमेह(चिनिरोग) ", "मुटु", "मृगौला", "अन्य"]})
      : super(questionName, questionOption);
}

class ExpQuestion32Card extends StatefulWidget {
  final ExpQuestion32 question = ExpQuestion32(); // Update the type to ExpandedQuestionModel

  ExpQuestion32Card({Key? key}) : super(key: key);

  @override
  ExpQuestion32CardState createState() => ExpQuestion32CardState();
}

class ExpQuestion32CardState extends State<ExpQuestion32Card> {
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
                        title: "गराउने गरेको छ",
                        isChecked: selectedOption == "गराउने गरेको छ",
                        onChanged: () {
                          setState(() {
                            QuestionsDomain.setAnswer32(1);
                            selectedOption = "गराउने गरेको छ";
                            widget.question.answerIndex = 0;
                          });
                        },
                      ),
                      const SizedBox(width: 30),
                      OptionCheckBox(
                        title: "गराउने गरेको छैन",
                        isChecked: selectedOption == "गराउने गरेको छैन",
                        onChanged: () {
                          setState(() {
                            selectedOption = "गराउने गरेको छैन";
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
