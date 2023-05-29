import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question33Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question33Card({super.key});

  @override
  State<Question33Card> createState() => _Question33CardState();
}

class _Question33CardState extends State<Question33Card> {
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
              Column(
                children: [
                  Text(" ३३. तपाईंको परिवारका बालबालिकाहरु बाल क्लव÷संगठन आदिमा आबद्धता रहेका छन् ? छन भने क्लबको नाम उल्लेख गर्नुहोस।",
                      style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(
                        controller: TextControllers.q33,
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
