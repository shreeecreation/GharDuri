import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Draft/draft.dart';
import 'package:ghardhuri/src/app/screens/Questions/questions.dart';

class QuestionRoute {
  static void questionRoute() {
    Get.to(const Questions());
  }

  static void draftRoute() {
    Get.to(const DraftScreen());
  }
}
