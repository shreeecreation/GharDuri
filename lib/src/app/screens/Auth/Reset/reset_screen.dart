import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';
import 'package:ghardhuri/src/core/utils/validators/validators.dart';

class ResetScreen extends StatelessWidget {
  ResetScreen({super.key});

  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(width: MediaQuery.of(context).size.width, height: 40, color: AppColors.primary, child: const Text('')),
        ),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            headerWidgetBesisahar(AppColors.primary),
            const SizedBox(height: 40),
            // Text("आफ्नो नयाँ पासवर्ड हाल्नुहोस", style: AppStyles.text16Px.textGrey),
            Row(
              children: [
                const SizedBox(width: 35),
                Text(
                  "आफ्नो नयाँ पासवर्ड हाल्नुहोस",
                  style: AppStyles.text18PxMedium,
                ),
              ],
            ),
            const SizedBox(height: 10),

            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                  controller: password,
                  validator: (val) {
                    if (!ExtString.validatePassword(val!)) return "Enter a valid password";
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      hintText: 'नयाँ पासवर्ड',
                      hintStyle: AppStyles.text16Px.textGrey,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black, width: 2.0)))),
            ),
            const SizedBox(height: 20),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextFormField(
                    controller: confirmPassword,
                    validator: (val) {
                      if (password.text != confirmPassword.text) return "password don't match ";
                      return null;
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        hintText: 'नयाँ पासवर्ड पुष्टि गर्नुहोस् ',
                        hintStyle: AppStyles.text16Px.textGrey,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black, width: 2.0))))),
            const SizedBox(height: 20),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                    onPressed: () async {
                      //TODO Reset functionality
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child: Text("अगाडी बढ्नुहोस  ", style: AppStyles.text18PxSemiBold))),
          ]),
        ),
      ]),
    );
  }
}
