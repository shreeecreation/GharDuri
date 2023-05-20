import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final int questionIndex;
  final String question;
  final List<String> options;
  final int selectedOptionIndex;
  final ValueChanged<int> onOptionSelected;

  const QuestionCard({super.key, 
    required this.questionIndex,
    required this.question,
    required this.options,
    required this.selectedOptionIndex,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${questionIndex + 1}. $question',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: List.generate(
                options.length,
                (index) => OptionCheckBox(
                  title: options[index],
                  isChecked: selectedOptionIndex == index,
                  onChanged: () {
                    onOptionSelected(index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCheckBox extends StatelessWidget {
  final String title;
  final bool isChecked;
  final VoidCallback onChanged;

  const OptionCheckBox({super.key, 
    required this.title,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            onChanged();
          },
        ),
        Text(title),
      ],
    );
  }
}
