import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Bottom%20Navigator/home_navigator.dart';
import 'package:ghardhuri/src/app/screens/Draft/draft_screen.dart';
import 'package:ghardhuri/src/app/screens/Questions/questions.dart';

class QuestionRoute {
  static void questionRoute() {
    Get.to(() => const Questions());
  }

  static void draftRoute() {
    Get.to(() => const DraftScreen());
  }

  static void navigatorRoute() {
    Get.to(() => const HomeNavigator());
  }
}
