import 'package:flutter/material.dart';

class TextControllers {
  static TextEditingController bastikoname = TextEditingController();
  static TextEditingController question1muliKoname = TextEditingController();

  //question2
  static TextEditingController jatiController = TextEditingController();
  static TextEditingController dharmaController = TextEditingController();

  //question6
  static TextEditingController q31 = TextEditingController();
  static TextEditingController q32 = TextEditingController();
  //question6
  static TextEditingController q61 = TextEditingController(text:"0");
  static TextEditingController q62 = TextEditingController(text:"0");
  static TextEditingController q63 = TextEditingController(text:"0");
  static TextEditingController q64 = TextEditingController(text:"0");

  //question7
  static TextEditingController q71 = TextEditingController(text:"0");

  //question10
  static TextEditingController q101 = TextEditingController(text:"0");
  static TextEditingController q102 = TextEditingController(text:"0");
  //question15
  static TextEditingController q151 = TextEditingController();

//questions22
  static TextEditingController q221 = TextEditingController();

  //question24
  static TextEditingController q241 = TextEditingController(text:"0");
  static TextEditingController q242 = TextEditingController(text:"0");
  static TextEditingController q243 = TextEditingController(text:"0");

//questions27
  static TextEditingController q271 = TextEditingController(text:"0");

  //question24
  static TextEditingController q281 = TextEditingController(text:"0");
  static TextEditingController q282 = TextEditingController(text:"0");
  static TextEditingController q283 = TextEditingController(text:"0");
  static TextEditingController q284 = TextEditingController(text:"0");

  //question29
  static TextEditingController q291 = TextEditingController(text:"0");
  static TextEditingController q292 = TextEditingController(text:"0");
  static TextEditingController q293 = TextEditingController(text:"0");
  static TextEditingController q294 = TextEditingController(text:"0");

  //question29
  static TextEditingController q2911 = TextEditingController();
  static TextEditingController q2921 = TextEditingController();
  static TextEditingController q2931 = TextEditingController();
  static TextEditingController q2941 = TextEditingController();

  //question30
  static TextEditingController q301 = TextEditingController(text:"0");
  static TextEditingController q302 = TextEditingController();
  static TextEditingController q303 = TextEditingController(text:"0");
  static TextEditingController q304 = TextEditingController();

  static TextEditingController q33 = TextEditingController();

  static TextEditingController suchiKarta = TextEditingController();


  static void clearAll() {
    bastikoname.text = "";
    question1muliKoname.text = "";
    jatiController.text = "";
    dharmaController.text = "";
    q31.text = "0";
    q32.text = "0";
     q61.text ="0";
 q62.text = "0";
   q63.text = "0";
   q64.text = "0";
   q71.text = "0";
   q101.text = "0";
q102.text  = "0";
q151.text = "0";
q221.text = "";
q241.text = "0";
q242.text = "0";
q243.text = "0";
q271.text = "0";
q281.text = "0";
q282.text = "0";
q283.text = "0";
q284.text ="0";
q291.text = "0";
q292.text = "0";
q293.text = "0";
q294.text ="0";

q2911.text = "0";
q2921.text = "0";
q2931.text = "0";
q2941.text ="0";

q301.text = "0";
q302.text = "";
q303.text = "0";
q304.text ="";

q33.text = "";
suchiKarta.text = "";
  }
}
