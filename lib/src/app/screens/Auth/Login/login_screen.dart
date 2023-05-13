import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';
import 'package:ghardhuri/src/core/utils/validators/validators.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
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
            headerWidgetBesisahar(Colors.black),
            const SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                  controller: phoneNumber,
                  validator: (val) {
                    if (!ExtString.validatePhoneNumber(val!)) return "Enter a valid number";
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'मोबाइल नम्बर',
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
                    controller: phoneNumber,
                    validator: (val) {
                      if (!ExtString.validatePassword(val!)) return "Enter a valid number";
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'पासवर्ड',
                        hintStyle: AppStyles.text16Px.textGrey,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black, width: 2.0))))),
            const SizedBox(height: 20),
            Text("लगइन हुनका लागि आफ्नो मोबाइल नम्बर र पस्स्वोड हाल्नुहोस", style: AppStyles.text16Px.textGrey),
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
                    child: Text("अगाडी बढ्नुहोस  ", style: AppStyles.text18PxSemiBold))),
            const SizedBox(height: 20),
            Text("पासवर्ड बिर्सनुभयो?", style: AppStyles.text16Px.textGrey),
          ]),
        ),
      ]),
    );
  }
}
