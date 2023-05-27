import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';

class OptionCheckBox extends StatelessWidget {
final String title;
final bool isChecked;
final VoidCallback onChanged;

const OptionCheckBox({
  Key? key,
  required this.title,
  required this.isChecked,
  required this.onChanged,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Column(
    children: [
      const SizedBox(height: 8),
      Row(
        children: [
          CustomCheckBox(
            isChecked: isChecked,
            onChanged: onChanged,
          ),
          const SizedBox(width: 20),
          Text(title),
        ],
      ),
    ],
  );
}
}

class CustomCheckBox extends StatelessWidget {
final bool isChecked;
final VoidCallback onChanged;

const CustomCheckBox({
  Key? key,
  required this.isChecked,
  required this.onChanged,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onChanged,
    child: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      child: isChecked
          ? Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                child: const Text(""),
              ),
            )
          : Container(),
    ),
  );
}
}
