import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';
import 'package:ghardhuri/src/core/utils/validators/validators.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});
  final TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            color: AppColors.primary,
            child: const Text(''),
          ),
        ),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            headerWidgetBesisahar(AppColors.primary),
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 35),
                Text(
                  "आफ्नो मोबाइल नं हाल्नुहोस",
                  style: AppStyles.text14PxMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                  controller: phoneNumber,
                  validator: (val) {
                    if (!ExtString.validatePhoneNumber(val!)) return "Enter a valid number";
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: '98********',
                      hintStyle: AppStyles.text16Px.textGrey,
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.black, width: 2.0)))),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                    onPressed: () async {
                      //TODO login functionality
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child: Text("OTP पठाउनुहोस्", style: AppStyles.text18PxSemiBold))),
            const SizedBox(height: 20),
          ]),
        ),
      ]),
    );
  }
}
