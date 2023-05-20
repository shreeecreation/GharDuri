import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/login_screen.dart';
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

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(LoginScreen(), transition: Transition.downToUp, duration: const Duration(milliseconds: 500));
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
