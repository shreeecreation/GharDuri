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
    q31.text = "";
    q32.text = "";
     q61.text ="";
 q62.text = "";
   q63.text = "";
   q64.text = "";
   q71.text = "";
   q101.text = "";
q102.text  = "";
q151.text = "";
q221.text = "";
q241.text = "";
q242.text = "";
q243.text = "";
q271.text = "";
q281.text = "";
q282.text = "";
q283.text = "";
q284.text ="";
q291.text = "";
q292.text = "";
q293.text = "";
q294.text ="";

q2911.text = "";
q2921.text = "";
q2931.text = "";
q2941.text ="";

q301.text = "";
q302.text = "";
q303.text = "";
q304.text ="";

q33.text = "";
suchiKarta.text = "";
  }
}
