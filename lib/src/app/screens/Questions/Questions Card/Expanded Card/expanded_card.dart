import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class ExpQuestionCard extends StatefulWidget {
  final question; // Update the type to ExpandedQuestionModel

  const ExpQuestionCard({Key? key, required this.question}) : super(key: key);

  @override
  ExpQuestionCardState createState() => ExpQuestionCardState();
}

class ExpQuestionCardState extends State<ExpQuestionCard> {
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
              if (selectedOption == "छ" && widget.question.questionOption != null)
                Column(
                  children: (widget.question.questionOption as List<String>)
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
      ),
    );
  }
}
