import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/API/Auth/Login/login_api.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:ghardhuri/src/core/utils/header_widget.dart';
import 'package:ghardhuri/src/core/utils/validators/validators.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                headerWidgetBesisahar(Colors.black),
                const SizedBox(height: 40),
                mobileNumber(context),
                const SizedBox(height: 20),
                password(context),
                const SizedBox(height: 20),
                Text("लगइन हुनका लागि आफ्नो मोबाइल नम्बर र पस्स्वोड हाल्नुहोस", style: AppStyles.text16Px.textGrey),
                const SizedBox(height: 20),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            // ignore: unused_local_variable
                            var response = await LoginAPI.loginPoint(phoneNumberController.text, passwordController.text, context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        child: Text("अगाडी बढ्नुहोस  ", style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 20),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget password(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.2,
        child: TextFormField(
            obscureText: true,
            controller: passwordController,
            validator: (val) {
              if (!ExtString.validatePassword(val!)) return "Enter a valid password";
              return null;
            },
            decoration: InputDecoration(
                hintText: 'पासवर्ड',
                hintStyle: AppStyles.text16Px.textGrey,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black, width: 2.0)))));
  }

  Widget mobileNumber(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: TextFormField(
          controller: phoneNumberController,
          validator: (val) {
            if (!ExtString.validatePhoneNumber(val!)) return "Enter a valid number";
            return null;
          },
          decoration: InputDecoration(
              hintText: 'मोबाइल नम्बर',
              hintStyle: AppStyles.text16Px.textGrey,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black, width: 2.0)))),
    );
  }
}
