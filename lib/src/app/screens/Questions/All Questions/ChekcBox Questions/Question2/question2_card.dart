import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question2Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question2Card({super.key});

  @override
  State<Question2Card> createState() => _Question2CardState();
}

class _Question2CardState extends State<Question2Card> {
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
              Row(
                children: [
                  Text("२.१ जाति ", style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(
                        controller: TextControllers.jatiController,
                        decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("२.२ धर्म ", style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(
                        controller: TextControllers.dharmaController,
                        decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
