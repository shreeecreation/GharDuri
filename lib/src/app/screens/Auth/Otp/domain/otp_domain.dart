import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';
import 'package:pinput/pinput.dart';

String verifyPin = "";

final pinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: AppStyles.text16Px,
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.primary),
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
  ),
);
