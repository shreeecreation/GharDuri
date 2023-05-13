import 'package:flutter/material.dart';

Widget headerWidgetBesisahar(colors) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(height: 143, width: 169, decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.png')))),
      const SizedBox(height: 10),
      Text("घरधुरी सर्वेक्षण", style: TextStyle(fontSize: 26, color: colors)),
      Text("बेसीशहर नगरपालिका", style: TextStyle(fontSize: 26, color: colors)),
    ],
  );
}
