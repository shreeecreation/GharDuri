import 'package:flutter/material.dart';

import 'Questions Utils/question_checkbox.dart';

class QuestionCard extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final question;

  const QuestionCard({super.key, required this.question});

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
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
                children: widget.question.questionOption.map<Widget>((option) {
                  final index = widget.question.questionOption.indexOf(option);

                  return OptionCheckBox(
                    title: option,
                    isChecked: selectedOption == option,
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = option;
                        widget.question.answerIndex = index;
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

