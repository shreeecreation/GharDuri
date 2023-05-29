import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question27Card extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Question27Card({super.key});

  @override
  State<Question27Card> createState() => _Question27CardState();
}

class _Question27CardState extends State<Question27Card> {
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
                  Text("२७. तपाईको परिवारमा बाल विकास केन्द्र वा पूर्व प्रा.वि. तहमा जाने ३ देखि ४ वर्षसम्मका बालबालिका संख्या कति छ ? ",
                      style: AppStyles.text18PxBold),
                  const SizedBox(width: 5),
                  const SizedBox(
                    width: 120,
                    height: 15,
                    child: TextField(decoration: InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
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
