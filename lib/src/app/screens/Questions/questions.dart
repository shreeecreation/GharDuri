import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/Question3/question3.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/expanded_questions1.dart';
import 'package:ghardhuri/src/core/API/Auth/setward.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
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
import 'All Questions/Table Questions/table_questions1.dart';
import 'All Questions/familyNo.dart';
import 'domain/questions_domain.dart';

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
  final List<List<String>> listOfLists = [
    ["सानो धिमिरे टोल", "धिमिरे टोल", "रतनपुर टोल", "पौडेल गाउँ टोल", "उदिपुर टोल", "खत्रिचौर टोल", "नयाँगाउँ टोल", "सारतेपोखरी"], //1
    [
      "चिसापानी टोल",
      "तालफाँट टोल",
      "टार बोहोराबेसी",
      "मनकामना टोल",
      "भकुण्डे टोल",
      "शिवालय टोल",
      "मगरगाउँ सिरान टोल",
      "माझगाउँ नरुवल टोल",
      "पिप्ले टोल"
    ], //2
    [
      "काउलेपानी टोल",
      "दरबार टोल",
      "ज्योतिचौतारा टोल",
      "रानिकुवा मुलपानी टोल",
      "स्वामीचौतारा टोल",
      "थुम्काडाँडा टोल",
      "बसौलागाउँ टोल",
      "झप्रिकमलटारी टोल",
      "शान्ती टोल",
      "मगरपात्ले टोल",
      "मिलनटोल",
      "दनाईगाउँ टोल"
    ], //3
    [
      "पात्लेगरा टोल",
      "चम्डिला टोल",
      "टारी किरिन्चे टोल",
      "डाँडा गाउँ टोल",
      "गैरीगाउँ टोल",
      "मिलन टोल",
      "फोस्रे टोल",
      "हिले टोल",
      "पिर्सिङ टोल",
      "झगरिया टोल"
    ], //4
    [
      "ज्यारखाङ टोल",
      "बाख्रेजगत टोल",
      "काेच्मे टोल",
      "स्यारे टोल",
      "लब्सीबाेट टोल",
      "पुरानाेगाउँ टोल",
      "गैरीगाउँ टोल",
      "डाडा गाउँ टोल",
      "चितुवाखाेर टोल",
      "बर्तु टोल",
      "लाङ्दी फेदी टोल"
    ], //5
    [
      'तल्लो मकैडाँडा टोल',
      'उपल्लो मकैडाँडा टोल',
      'चनौटे टोल',
      'छापस्वाँरा टोल',
      'राउत टोल',
      'फाँटगाउँ टोल',
      'भण्डारी गाउँ टोल',
      'रादल गाउँ टोल',
      'कुर्पिन टोल',
      'पुमागाउँ टोल',
      'कान्ले टोल',
      'सेरा टोल',
      'बेलाउती बिसौना टोल',
      'गोतामे चोक टोल',
      'कटर बोट टोल',
      'खत्री गाउँ टोल',
      'छ घर टोल',
      'डि कोलमराङ टोल'
    ], //6
    ['सुयलथोक - चण्डीडाँडा २', 'सहजी', 'मयुम - वनथोक ४', 'सातबिसे', 'भलुवाटार', 'पुरानो बैंकचोक', 'मनाङ्गे चौतारा'], //7
    ['ठुलोपधेरो', 'विनायक टोल', 'करपुरेश्वर टोल', 'नारायणस्थान टोल', 'प्रगती टोल'], //8
    ['शितलपाटि टोल', 'पाखाथोक टोल', 'साम्दी टोल', 'बगालेस्वारा टोल', 'टाँडीबिसौनी टोल', 'शिवशक्ती टोल', 'कालिका टोल', 'बिम्दा टोल'], //9
    [
      'अक्कर लेते टोल',
      'खासुर गाउँ टोल',
      'खासुर तल्लो गाउँ टोल',
      'खासुर बेसी टोल',
      'कल्लेरी मकैस्वारा टोल',
      'देउजनथोक टोल',
      'पांग्रेक्यू देउराली टोल',
      'साँधु डाडागाउँ टोल',
      'साँधु म्रुोचे टोल',
      'खाँचे टोल',
      'गाउँभाचोक टोल',
      'कुप्लीङ सिरुवारी टोल',
      'रातामाता घडेरी थुम्का कुलमाध टोल',
      'बेसीभाचोक डाँडागाउँ टोल',
      'बेसीभाचोक गैह्रीगाउँ टोल',
      'बेसीभाचोक भोटेफाँट टोल',
      'राउतथोक भङ्गालेटोल',
      'बाँझाखेत अक्कर टोल',
      'इन्द्रेणी टोल',
      'आँपचउर टोल',
      'पासाचउर टोल',
      'सालडाँडा थारचौर थानीमाई टोल',
      'चितुवावन टोल'
    ], //10
    [
      'बस्नेतगाउँ',
      'कोल्डाँडा',
      'स्याउत',
      'भण्डारीगाउँ',
      'तिलाहार',
      'थापाडाँडा',
      'वानियाँपधेरा',
      'कार्किडाँडा गाउँ',
      'बरवोट',
      'बुढिकुवा',
      'रामचोकबेसी',
      'भकुण्डे',
      'रिठ्ठेवगर',
      'बजारखुट्टा',
      'बगैंचा',
      'रामचोक गाउँ'
    ] //11
  ];
  String? selectedItem;
  final int selectedNumber = int.parse(WardNo.wardno) ; // Specify the desired number here
  @override
  void initState() {
    super.initState();
    int randomNumber = generateRandomNumber();
    FamilyNumber.familyNumber = randomNumber.toString();
  }

  @override
  Widget build(BuildContext context) {
    List<String> dropdownItems = listOfLists[selectedNumber - 1];
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 30, // Adjust the position as needed
            right: 16, // Adjust the position as needed
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
              onPressed: () {
                LoginDialog.saveForm(context);
              },
              child: const Text('Save'),
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
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Text("बस्तीको नाम", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(width: 15),
                              Center(
                                child: DropdownButton<String>(
                                  value: selectedItem,
                                  hint: const Text('टोल छान्नुहोस्'),
                                  items: dropdownItems.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      QuestionsDomain.bastikoname(selectedItem);
                                      selectedItem = newValue;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Text("परिवार क्र.स", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(width: 15),
                              SizedBox(width: 80, height: 20, child: Text(FamilyNumber.familyNumber.toString(), style: AppStyles.text16Px)),
                            ],
                          ),
                          const SizedBox(height: 5),
                        ])))),
            Question1Card(question: question1),
            const Question2Card(),
            const Question3Card(),
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("सुची कर्ताको नाम", style: AppStyles.text18PxBold),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 150,
                    height: 35,
                    child: TextField(
                        controller: TextControllers.suchiKarta,
                        decoration: const InputDecoration(focusedBorder: UnderlineInputBorder(), border: UnderlineInputBorder())),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

int generateRandomNumber() {
  Random random = Random();
  int min = 100000; // Minimum 6-digit number
  int max = 999999; // Maximum 6-digit number

  return min + random.nextInt(max - min);
}
