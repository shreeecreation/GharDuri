import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/core/env/envmodels.dart';
import 'src/app/screens/Splash/splash_screen.dart';
import 'src/core/themes/appcolors.dart';
import 'src/core/themes/themedata.dart';
import 'src/core/utils/unfocusnode.dart';

void main() async {
  await dotenv.load(fileName: Environment.fileName);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: AppColors.primary));
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocusNode(context);
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
