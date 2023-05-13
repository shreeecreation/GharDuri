import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 143, width: 169, decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.png')))),
                const SizedBox(height: 10),
                Text("घरधुरी सर्वेक्षण", style: AppStyles.text30Px.white),
                Text("बेसीशहर नगरपालिका", style: AppStyles.text30Px.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
