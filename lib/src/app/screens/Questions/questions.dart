import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/expanded_questions1.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'All Questions/ChekcBox Questions/Question18/question18.dart';
import 'All Questions/ChekcBox Questions/Question19/question19.dart';
import 'All Questions/ChekcBox Questions/Question2/question2_card.dart';
import 'All Questions/ChekcBox Questions/Question21/question21.dart';
import 'All Questions/ChekcBox Questions/Question23/question23.dart';
import 'All Questions/ChekcBox Questions/Question26/question26.dart';
import 'All Questions/ChekcBox Questions/Question27/question27.dart';
import 'All Questions/ChekcBox Questions/Question28/quesion28.dart';
import 'All Questions/ChekcBox Questions/Question29/question29.dart';
import 'All Questions/ChekcBox Questions/Question30/question30.dart';
import 'All Questions/ChekcBox Questions/Question31/question31.dart';
import 'All Questions/ChekcBox Questions/Question33/question33.dart';
import 'All Questions/ChekcBox Questions/Question34/question34.dart';
import 'All Questions/ChekcBox Questions/Question35/question35.dart';
import 'All Questions/ChekcBox Questions/Question37/question37.dart';
import 'All Questions/ChekcBox Questions/Question39/question39.dart';
import 'All Questions/ChekcBox Questions/Question40/question40.dart';
import 'All Questions/ChekcBox Questions/Question42/question42.dart';
import 'All Questions/ChekcBox Questions/Question41/question41.dart';
import 'All Questions/ChekcBox Questions/Question43/question43.dart';
import 'All Questions/ChekcBox Questions/Question44/question44.dart';
import 'All Questions/ChekcBox Questions/Question45/question45.dart';
import 'All Questions/ChekcBox Questions/Question46/question46.dart';
import 'All Questions/ChekcBox Questions/Question49/question49.dart';
import 'All Questions/ChekcBox Questions/Question50/question50.dart';
import 'All Questions/Expanded Questions/Question25/question25.dart';
import 'All Questions/ChekcBox Questions/Question4/question4.dart';
import 'All Questions/ChekcBox Questions/Question5/question5.dart';
import 'All Questions/ChekcBox Questions/Question6/question6.dart';
import 'All Questions/ChekcBox Questions/Question7/question7.dart';
import 'All Questions/ChekcBox Questions/Question17/question17.dart';
import 'All Questions/ChekcBox Questions/questions_1.dart';
import 'All Questions/Expanded Questions/Question10/question10.dart';
import 'All Questions/Expanded Questions/Question11/question11.dart';
import 'All Questions/Expanded Questions/Question12/question12.dart';
import 'All Questions/Expanded Questions/Question13/question13.dart';
import 'All Questions/Expanded Questions/Question14/question14.dart';
import 'All Questions/Expanded Questions/Question15/question15.dart';
import 'All Questions/Expanded Questions/Question16/question16.dart';
import 'All Questions/Expanded Questions/Question20/question20.dart';
import 'All Questions/Expanded Questions/Question22/question22.dart';
import 'All Questions/Expanded Questions/Question24/question24.dart';
import 'All Questions/Expanded Questions/Question32/question32.dart';
import 'All Questions/Expanded Questions/Question36/question36.dart';
import 'All Questions/Expanded Questions/Question38/question38.dart';
import 'All Questions/Expanded Questions/Question47/question47.dart';
import 'All Questions/Expanded Questions/Question48/question48.dart';
import 'All Questions/Expanded Questions/Question8/question8.dart';
import 'All Questions/Expanded Questions/Question9/question9.dart';
import 'All Questions/Table Questions/Question2Table/question2cardtab.dart';
import 'All Questions/Table Questions/table_questions1.dart';
import 'All Questions/allquestions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  QuestionsState createState() => QuestionsState();
}

class QuestionsState extends State<Questions> {
  String? selectedOption;
  Question1 question1 = Question1();
  ExpQuestion1 expquestion1 = ExpQuestion1();
  TableQuestion1 tablequestion1 = TableQuestion1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80, // Adjust the position as needed
            right: 16, // Adjust the position as needed
            child: FloatingActionButton(
              onPressed: () {
                // Handle save action
              },
              child: const Text('Save'),
            ),
          ),
          Positioned(
            bottom: 16, // Adjust the position as needed
            right: 16, // Adjust the position as needed
            child: FloatingActionButton(
              onPressed: () {
                // Handle save draft action
              },
              child: const Text('Save Draft'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
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
            Question1Card(question: question1),
            const Question2Card(),
            TableQuestion2Card(question: AllQuestions.tabQuestion),
            const Question4Card(),
            const Question5Card(),
            const Question6Card(),
            const Question7Card(), // Check box typ questions
            ExpQuestion8Card(), //Expanded Questions
            ExpQuestion9Card(), //Expanded Questions
            ExpQuestion10Card(), //Expanded Questions
            ExpQuestion11Card(), // Expanded Questions
            ExpQuestion12Card(), // Expanded Questions
            ExpQuestion13Card(), // Expanded Questions
            ExpQuestion14Card(), // Expanded Questions
            ExpQuestion15Card(), // Expanded Questions
            ExpQuestion16Card(), // Expanded Questions
            const Question17Card(), // Check box type questions
            const Question18Card(), // Check box type questions
            const Question19Card(), // Check box type questions
            ExpQuestion20Card(), // Expanded Questions
            const Question21Card(), // Check box type questions
            ExpQuestion22Card(), // Expanded Questions
            const Question23Card(), // Check box type questions
            ExpQuestion24Card(), // Expanded questions
            ExpQuestion25Card(), // Check box type questions
            const Question26Card(), // Check box type questions
            const Question27Card(),
            const Question28Card(),
            const Question29Card(),
            const Question30Card(),
            const Question31Card(),
            ExpQuestion32Card(),
            const Question33Card(),
            const Question34Card(),
            const Question35Card(),
            ExpQuestion36Card(),
            const Question37Card(),
            ExpQuestion38Card(),
            const Question39Card(),
            const Question40Card(),
            const Question41Card(),
            const Question42Card(),
            const Question43Card(),
            const Question44Card(),
            const Question45Card(),
            const Question46Card(),
            ExpQuestion47Card(),
            ExpQuestion48Card(),
            const Question49Card(),

            const Question50Card(),
          ],
        ),
      ),
    );
  }
}
