import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:pinput/pinput.dart';

import 'domain/otp_domain.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
            SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Image.asset(
                  'assets/images/otp.jpg',
                  fit: BoxFit.fill,
                )),
            Text("OTP प्रमाणीकरण", style: AppStyles.text30PxBold),
            const SizedBox(height: 40),
            Text("४ अंकको कोड तल उल्लेखित फोन नम्बरमा पठाइएको छ", style: AppStyles.text16Px.textGrey),
            const SizedBox(height: 20),
            Text("(98******)", style: AppStyles.text18PxBold),
            const SizedBox(height: 20),
            Pinput(
              defaultPinTheme: pinTheme,
              closeKeyboardWhenCompleted: true,
              length: 4,
              showCursor: true,
              onCompleted: (pin) => verifyPin = pin,
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                    onPressed: () async {
                      //TODO OTP functionality
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child: Text("पेश गर्नुहोस्", style: AppStyles.text18PxSemiBold))),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "कोड प्राप्त भएन?",
                style: AppStyles.text16Px.textGrey,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "पुनःपठाउनुहोस",
                    style: AppStyles.text18Px,
                  )),
              Text("00:30", style: AppStyles.text16Px)
            ])
          ]),
        ),
      ]),
    );
  }
}
