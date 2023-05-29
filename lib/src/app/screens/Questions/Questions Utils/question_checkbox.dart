import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
class MultipleCheckboxWidget extends StatefulWidget {
  final String option;
  final bool isSelected;
  final ValueSetter<bool> onChanged;

  const MultipleCheckboxWidget({
    required this.option,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  _MultipleCheckboxWidgetState createState() => _MultipleCheckboxWidgetState();
}

class _MultipleCheckboxWidgetState extends State<MultipleCheckboxWidget> {
  bool isChecked = false;

  @override
  void initState() {
    isChecked = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.option),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
        widget.onChanged(value!);
      },
    );
  }
}


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
            SizedBox(height: 40, child: Center(child: Text(title))),
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
