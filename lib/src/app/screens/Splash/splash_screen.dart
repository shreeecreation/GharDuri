import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/check_login.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/login_screen.dart';
import 'package:ghardhuri/src/app/screens/Bottom%20Navigator/home_navigator.dart';
import 'package:ghardhuri/src/core/API/Auth/get_profile_api.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    Future.delayed(const Duration(seconds: 2), () async {
      await Future.delayed(const Duration(seconds: 3));

      bool isLoggedIn = await CheckLogin.checkLogin();

      if (isLoggedIn) {
        CheckLogin.isLogin = true;
       await GetProfile.getProfile();
        Get.offAll(const HomeNavigator(), transition: Transition.downToUp, duration: const Duration(milliseconds: 1000));
      } else {
        CheckLogin.isLogin = false;

        Get.offAll(LoginScreen(), transition: Transition.downToUp, duration: const Duration(milliseconds: 500));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
            color: AppColors.primary,
            image: DecorationImage(image: AssetImage('assets/images/background.png'), fit: BoxFit.cover),
          )),
          Center(child: headerWidgetBesisahar(Colors.white)),
        ],
      ),
    );
  }
}
