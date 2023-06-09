import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Bottom%20Navigator/home_navigator.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/Question3/question3.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/ChekcBox%20Questions/Question33/question33.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/Question15/question15.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/familyNo.dart';
import 'package:ghardhuri/src/core/API/Auth/setward.dart';
import 'package:ghardhuri/src/core/API/Form%20API/form_api.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:ghardhuri/src/core/Answer%20Model/answer_model.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/Save%20as%20Draft/saveasdraft.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/utils/toast.dart';

class QuestionsDomain {
  static AnswerModel myData = AnswerModel();
  static List<int> qusetion3_1List = [];
  static List<int> qusetion3_2List = [];
  static List<int> qusetion15Lists = [];
  static List<String> qusetion33List = [];

  static List<int> qusetion18List = [];
  static List<int> qusetion19List = [];
  static List<int> qusetion41List = [];
  static List<int> qusetion42List = [];
  static List<int> qusetion35List = [];

  static List<int> qusetion45List = [];
  static bool canSave = false;
  static void questionsSubmit(context) {
    print(canSave);
    if (canSave) {
      print("dasdasd");
      setAnswer();
      //7
      setAnswer1();
      //10
      setAnswer10();
      //15
      //18
      setAnswer18();
      setAnswer19();
      addSuchiKarta();

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
      setUserid();

      setAnswer42();
      parseTextFields();
      parseTextFields33();
      Map<String, dynamic> jsonMap = myData.toJson();
      String jsonData = json.encode(jsonMap);
      FormAPI.formAPI(jsonData);
    } else {
      Navigator.pop(context);
      LoginDialog.cantSaveForm(context);
    }
  }

  static void questionsSubmitDraft(family, context) async {
    if (canSave) {
      //7
      setUserid();

      setAnswer1();
      //10
      setAnswer10();
      //15
      //18
      setAnswer18();
      setAnswer19();
      addSuchiKarta();

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
      parseTextFields();
      // String jsonData = json.encode(jsonMap);
      setWardNo(WardNo.wardno);
      setfamilyNo();
      Toasts.createDraftToast();
      Map<String, dynamic> jsonMap = myData.toJson();
      saveJsonFile(jsonMap);
      TextControllers.clearAll();
      await Future.delayed(const Duration(milliseconds: 1000));
      Get.offAll(const HomeNavigator());
      // print(jsonMap);
    } else {
      Navigator.pop(context);
      LoginDialog.cantSaveForm(context);
    }
  }

//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------
//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------
//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------
//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------
//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------//--------------------------------------------------
  static void bastikoname(name) {
    myData.bastiName = name;
  }

  static void setUserid() async {
    // Future<String> myVariable = ManageCookie.getCookie();
    myData.userId = ManageCookie.loginCookie;
  }

  static void setWardNo(ward) {
    myData.wardNo = ward;
  }

  static void setfamilyNo() {
    myData.familyNo = FamilyNumber.familyNumber.toString();
  }

  static void parseTextFields() {
    qusetion3_1List.clear();
    qusetion3_2List.clear();

    for (final controller in Question3Card.controllers) {
      final text = controller.text;

      if (text.isNotEmpty) {
        qusetion3_1List.add(int.parse(text));
      }
    }

    for (final controller in Question3Card.controllers1) {
      final text = controller.text;
      if (text.isNotEmpty) {
        qusetion3_2List.add(int.parse(text));
      }
    }
    setAnswer3_1();
    setAnswer3_2();
  }

  static void parseTextFields33() {
    qusetion33List.clear();

    for (final controller in Question33Card.controllers) {
      final text = controller.text;

      if (text.isNotEmpty) {
        qusetion33List.add(text);
      }
    }

    setAnswer33();
    // setAnswer3_2();
  }

  static void parseTextFields15() {
    qusetion15Lists.clear();

    for (final controller in ExpQuestion15Card.controllers) {
      final text = controller.text;

      if (text.isNotEmpty) {
        qusetion15Lists.add(int.parse(text));
        myData.question15 = qusetion15Lists;
      }
    }

    setAnswer3_1();
  }

//question1
  static String setGender(gender) {
    myData.question1_2 = gender;
    myData.question1_1 = TextControllers.question1muliKoname.text;
    return gender;
  }

  static setJati(index) {
    myData.question2_1 = index;
  }

  static setDharma(index) {
    myData.question2_2 = index;
  }

//question4

  static setPlace(index) {
    myData.question4 = index;
  }

//question5

  static setTime1(index) {
    myData.question5_1 = index;
  }

  static setTime2(index) {
    myData.question5_2 = index;
  }

//question18
  static setAnswer3_1() {
    myData.question3_1 = qusetion3_1List;
  }

//question18
  static setAnswer3_2() {
    myData.question3_2 = qusetion3_2List;
  }

  //question22
  static setAnswer33() {
    myData.question33 = qusetion33List;
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

// //question7
// static setAnswer15() {
//   myData.question15 = int.parse(TextControllers.q71.text == "" ? "0" : TextControllers.q71.text);
// }

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
    myData.question22 = TextControllers.q221.text;
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

    myData.question29_1_1 = int.parse(TextControllers.q2911.text == "" ? "0" : TextControllers.q2911.text);
    myData.question29_1_2 = int.parse(TextControllers.q2921.text == "" ? "0" : TextControllers.q2921.text);
    myData.question29_1_3 = int.parse(TextControllers.q2931.text == "" ? "0" : TextControllers.q2931.text);
    myData.question29_1_4 = int.parse(TextControllers.q2931.text == "" ? "0" : TextControllers.q2941.text);
  }

  static setAnswer30_1(index) {
    myData.question30_1 = index;
  }

  static setAnswer30_2(index) {
    myData.question30_2 = index;
  }

  static setAnswer30_3(index) {
    myData.question30_3 = index;
  }

  static setAnswer30_4(index) {
    myData.question30_4 = index;
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

  static setAnswer34(index) {
    myData.question34 = index;
  }

  static setAnswer35(index) {
    myData.question35 = qusetion35List;
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
    myData.question45 = qusetion45List;
  }

  static setAnswer461(index) {
      myData.question46_1 = index;
  }

  static setAnswer462(index) {
      myData.question46_2 = index;
  }

  static setAnswer463(index) {
      myData.question46_3 = index;
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

  static void addSuchiKarta() {
    myData.suchanakarta = TextControllers.suchiKarta.text;
  }

  static void clearAllValue() {
    myData.bastiName = null;
    myData.wardNo = null;
    myData.familyNo = null;
    myData.question1_1 = null;
    myData.question1_2 = null;
    myData.question2_1 = null;
    myData.question2_2 = null;
    myData.question3_1 = null;
    myData.question3_2 = null;
    myData.question4 = null;
    myData.question5_1 = null;
    myData.question5_2 = null;
    myData.question6_1 = null;
    myData.question6_2 = null;
    myData.question6_3 = null;
    myData.question6_4 = null;
    myData.question7_1 = null;
    myData.question7_2 = null;
    myData.question8 = null;
    myData.question9 = null;
    myData.question10_1 = null;
    myData.question10_2 = null;
    myData.question11 = null;
    myData.question12 = null;
    myData.question13 = null;
    myData.question14 = null;
    myData.question15 = null;
    myData.question16 = null;
    myData.question17 = null;
    myData.question18 = null;
    myData.question19 = null;
    myData.question20 = null;
    myData.question21 = null;
    myData.question22 = null;
    myData.question23 = null;
    myData.question24_1 = null;
    myData.question24_2 = null;
    myData.question24_3 = null;
    myData.question25 = null;
    myData.question26 = null;
    myData.question27 = null;
    myData.question28_1 = null;
    myData.question28_2 = null;
    myData.question28_3 = null;
    myData.question28_4 = null;
    myData.question29_1 = null;
    myData.question29_2 = null;
    myData.question29_3 = null;
    myData.question29_4 = null;
    myData.question29_1_1 = null;
    myData.question29_1_2 = null;
    myData.question29_1_3 = null;
    myData.question29_1_4 = null;
    myData.question30_1 = null;
    myData.question30_2 = null;
    myData.question30_3 = null;
    myData.question30_4 = null;
    myData.question31_1 = null;
    myData.question31_2 = null;
    myData.question31_3 = null;
    myData.question31_4 = null;
    myData.question32 = null;
    myData.question33 = null;
    myData.question34 = null;
    myData.question35 = null;
    myData.question36 = null;
    myData.question37 = null;
    myData.question38_1 = null;
    myData.question39 = null;
    myData.question40 = null;
    myData.question41 = null;
    myData.question42 = null;
    myData.question43_1 = null;
    myData.question43_2 = null;
    myData.question44 = null;
    myData.question45 = null;
    myData.question46_1 = null;
    myData.question46_2 = null;
    myData.question46_3 = null;
    myData.question46_4 = null;
    myData.question47 = null;
    myData.question48 = null;
    myData.question49 = null;
    myData.question50 = null;
    myData.suchanakarta = null;
    myData.userId = null;
  }
}
