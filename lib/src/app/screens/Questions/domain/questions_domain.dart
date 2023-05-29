import 'dart:convert';

import 'package:ghardhuri/src/core/Answer%20Model/answer_model.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';

class QuestionsDomain {
  static AnswerModel myData = AnswerModel();
  static List<int> qusetion18List = [];
  static List<int> qusetion19List = [];
  static List<int> qusetion41List = [];
  static List<int> qusetion42List = [];
  static void questionsSubmit() {
    setJatiandsetDharma();
    setAnswer();
    //7
    setAnswer1();
    //10
    setAnswer10();
    //15
    setAnswer15();
    //18
    setAnswer18();
    setAnswer19();

    //22
    setAnswer22();
    //24
    setAnswer24();
    //27
    setAnswer27();
    //28
    setAnswer28();
    setAnswer29();
    setAnswer31();
    setAnswer33();
    setAnswer41();
    setAnswer42();

    Map<String, dynamic> jsonMap = myData.toJson();
    String jsonData = json.encode(jsonMap);
    // FormAPI.formAPI(jsonData);
  }

//question1
  static String setGender(gender) {
    myData.question1_2 = gender;
    myData.question1_1 = TextControllers.question1muliKoname.text;
    return gender;
  }

//question2
  static setJatiandsetDharma() {
    myData.question2_1 = TextControllers.jatiController.text;
    myData.question2_2 = TextControllers.dharmaController.text;
  }

//question4

  static setPlace(index) {
    myData.question4 = index;
  }

  //question5

  static setTime(index) {
    myData.question5 = index;
  }

  //question6
  static setAnswer() {
    myData.question6_1 = int.parse(TextControllers.q61.text == "" ? "0" : TextControllers.q61.text);
    myData.question6_2 = int.parse(TextControllers.q62.text == "" ? "0" : TextControllers.q62.text);
    myData.question6_3 = int.parse(TextControllers.q63.text == "" ? "0" : TextControllers.q63.text);
    myData.question6_4 = int.parse(TextControllers.q64.text == "" ? "0" : TextControllers.q64.text);
  }

  //question7
  static setAnswer1() {
    myData.question7_1 = int.parse(TextControllers.q71.text == "" ? "0" : TextControllers.q71.text);
  }

  static setAnswer2(index) {
    myData.question7_2 = index;
  }

  //question8
  static setAnswer8(index) {
    myData.question8 = index;
  }

  //question8
  static setAnswer9(index) {
    myData.question9 = index;
  }

  //question10
  static setAnswer10() {
    myData.question10_1 = int.parse(TextControllers.q71.text == "" ? "0" : TextControllers.q71.text);
    myData.question10_1 = int.parse(TextControllers.q71.text == "" ? "0" : TextControllers.q71.text);
  }

  //question11
  static setAnswer11(index) {
    myData.question11 = index;
  }

  //question11
  static setAnswer12(index) {
    myData.question12 = index;
  }

  //question11
  static setAnswer13(index) {
    myData.question13 = index;
  }

  //question11
  static setAnswer14(index) {
    myData.question14 = index;
  }

  //question7
  static setAnswer15() {
    myData.question15 = int.parse(TextControllers.q71.text == "" ? "0" : TextControllers.q71.text);
  }

  //question11
  static setAnswer16(index) {
    myData.question16 = index;
  }

  //question11
  static setAnswer17(index) {
    myData.question17 = index;
  }

  //question18
  static setAnswer18() {
    myData.question18 = qusetion18List;
  }

  //question18
  static setAnswer19() {
    myData.question19 = qusetion19List;
  }

  //question20
  static setAnswer20(index) {
    myData.question20 = index;
  }

  //question20
  static setAnswer21(index) {
    myData.question21 = index;
  }

  //question22
  static setAnswer22() {
    myData.question22 = int.parse(TextControllers.q221.text == "" ? "0" : TextControllers.q221.text);
  }

  //question23
  static setAnswer23(index) {
    myData.question23 = index;
  }

  //question24
  static setAnswer24() {
    myData.question24_1 = int.parse(TextControllers.q241.text == "" ? "0" : TextControllers.q241.text);
    myData.question24_2 = int.parse(TextControllers.q242.text == "" ? "0" : TextControllers.q242.text);
    myData.question24_3 = int.parse(TextControllers.q243.text == "" ? "0" : TextControllers.q243.text);
  }

  //question23
  static setAnswer25(index) {
    myData.question25 = index;
  }

  //question23
  static setAnswer26(index) {
    myData.question26 = index;
  }

  //question22
  static setAnswer27() {
    myData.question27 = int.parse(TextControllers.q271.text == "" ? "0" : TextControllers.q271.text);
  }

  //question24
  static setAnswer28() {
    myData.question28_1 = int.parse(TextControllers.q281.text == "" ? "0" : TextControllers.q281.text);
    myData.question28_2 = int.parse(TextControllers.q282.text == "" ? "0" : TextControllers.q282.text);
    myData.question28_3 = int.parse(TextControllers.q283.text == "" ? "0" : TextControllers.q283.text);
    myData.question28_4 = int.parse(TextControllers.q283.text == "" ? "0" : TextControllers.q284.text);
  }

  //question24
  static setAnswer29() {
    myData.question29_1 = int.parse(TextControllers.q291.text == "" ? "0" : TextControllers.q291.text);
    myData.question29_2 = int.parse(TextControllers.q292.text == "" ? "0" : TextControllers.q292.text);
    myData.question29_3 = int.parse(TextControllers.q293.text == "" ? "0" : TextControllers.q293.text);
    myData.question29_4 = int.parse(TextControllers.q293.text == "" ? "0" : TextControllers.q294.text);

    myData.qustion29_1_1 = int.parse(TextControllers.q2911.text == "" ? "0" : TextControllers.q2911.text);
    myData.qustion29_1_2 = int.parse(TextControllers.q2921.text == "" ? "0" : TextControllers.q2921.text);
    myData.qustion29_1_3 = int.parse(TextControllers.q2931.text == "" ? "0" : TextControllers.q2931.text);
    myData.qustion29_1_4 = int.parse(TextControllers.q2931.text == "" ? "0" : TextControllers.q2941.text);
  }

  static setAnswer30_1(index) {
    myData.question31_1 = index;
  }

  static setAnswer30_2(index) {
    myData.question31_2 = index;
  }

  static setAnswer30_3(index) {
    myData.question31_3 = index;
  }

  static setAnswer30_4(index) {
    myData.question31_4 = index;
  }

  static setAnswer31() {
    myData.question31_1 = int.parse(TextControllers.q301.text == "" ? "0" : TextControllers.q291.text);
    myData.question31_2 = TextControllers.q302.text;
    myData.question31_3 = int.parse(TextControllers.q303.text == "" ? "0" : TextControllers.q293.text);
    myData.question31_4 = TextControllers.q304.text;
  }

  static setAnswer32(index) {
    myData.question32 = index;
  }

  //question22
  static setAnswer33() {
    myData.question33 = int.parse(TextControllers.q33.text == "" ? "0" : TextControllers.q33.text);
  }

  
  static setAnswer34(index) {
    myData.question34 = index;
  }
    static setAnswer35(index) {
    myData.question35 = index;
  }

      static setAnswer36(index) {
    myData.question36 = index;
  }
        static setAnswer37(index) {
    myData.question37 = index;
  }
        static setAnswer38(index) {
    myData.question38_1 = index;
  }

        static setAnswer39(index) {
    myData.question39 = index;
  }

        static setAnswer40(index) {
    myData.question40 = index;
  }
          static setAnswer41() {
    myData.question41 = qusetion41List;
  }
           static setAnswer42() {
    myData.question42 = qusetion42List;
  }

             static setAnswer431(index) {
    myData.question43_1 = index;
  }
               static setAnswer432(index) {
    myData.question43_2 = index;
  }
              static setAnswer44(index) {
    myData.question44 = index;
  }
                static setAnswer45(index) {
    myData.question45 = index;
  }

               static setAnswer461(index) {
    myData.question46_1 = index;
  }
               static setAnswer462(index) {
    myData.question46_2 = index;
  }
           static setAnswer47(index) {
    myData.question47 = index;
  }
     static setAnswer48(index) {
    myData.question48 = index;
  }
   static setAnswer49(index) {
    myData.question49 = index;
  }

   static setAnswer50(index) {
    myData.question49 = index;
  }
}
