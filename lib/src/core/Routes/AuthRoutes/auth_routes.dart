import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Auth/Forgot/forgot_screen.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/login_screen.dart';
import 'package:ghardhuri/src/app/screens/Auth/Reset/reset_screen.dart';

class AuthRoutes {
  static void loginPageRoute() {
    Get.offAll(LoginScreen());
  }

  static void forgotPasswordRoute() {
    Get.to(ForgotScreen());
  }

  static void otpVerificationRoute() {
  }

  static void changePasswordRoute() {
    Get.to(ResetScreen());
  }
}

