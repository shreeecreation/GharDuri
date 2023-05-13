import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
          Center(
            child: headerWidgetBesisahar(Colors.white),
          ),
        ],
      ),
    );
  }
}
