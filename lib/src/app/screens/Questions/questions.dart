import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

import 'All Questions/questions_1.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  String? selectedOption;
  Question1 question1 = Question1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 36, color: Colors.black),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 2, blurRadius: 5, offset: const Offset(0, 3)),
              ],
            ),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text("फारम", style: AppStyles.text24PxBold.black),
            ),
          ),
          Container(height: 20),
          Text("अनसुूची १ \nघरधरुी सर्वेक्षण फारमको नमनुा \n(दफा १० (३) ख सँग सम्बन्धधत) ",
              textAlign: TextAlign.center, style: AppStyles.text20PxBold),
          Container(height: 20),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                  "पररर्वार र  व्यन्िको गणना गदाा अक्सर बसोर्वास गरेको ठाँउबाट \nगनपाुदाछ । उत्तर लेख्दा न्चधह लगाउने ठाउँमा उपयिु संकेतमा गोलो न्चधह “इ“ लगाउनुपदाछ । लेख्नुपनेभएमा स्पष्ट अक्षर र्वा अंकमा लेख्नु पदाछ । कोडहरु लेख्नुपनेठाउँमा स्पष्ट अंक र्वा अक्षरमा लेख्नपुदाछ",
                  // textAlign: TextAlign.,
                  style: AppStyles.text16Px)),
          Padding(
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        const Text(
                          "र्वडा नं. ",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text("बस्तीको नाम   ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: SizedBox(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text("पररर्वार क्र.सं    ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: SizedBox(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        )
                      ])))),
          Padding(
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
                      question1.questionName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: question1.questionOption.map((option) {
                        return OptionCheckBox(
                          title: option,
                          isChecked: selectedOption == option,
                          onChanged: () {
                            setState(() {
                              selectedOption = option;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) => onChanged(),
        ),
        Text(title),
      ],
    );
  }
}
