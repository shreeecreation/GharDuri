import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/app/screens/Auth/Forgot/forgot_screen.dart';
import 'src/app/screens/Auth/Otp/otp_screen.dart';
import 'src/core/themes/appcolors.dart';
import 'src/core/themes/themedata.dart';
import 'src/core/utils/unfocusnode.dart';

void main() async {
  // await dotenv.load(fileName: Environment.fileName);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: AppColors.primary));
  // await dotenv.load();
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const OtpScreen(),
      ),
    );
  }
}
