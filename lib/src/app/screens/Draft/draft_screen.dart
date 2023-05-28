import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/Expanded%20Questions/expanded_questions1.dart';
import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class DraftScreen extends StatelessWidget {
  const DraftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 70),
      Row(children: [
        const SizedBox(width: 10),
        Expanded(
            child: SizedBox(
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                    border: Border.all(color: AppColors.primary, width: 1.0),
                  ),
                  child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                          hintText: 'खोज गर्नुहोस्',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search))),
                ))),
        const SizedBox(width: 10),
        Expanded(
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      // requestProduct(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child: Text("ड्राफ्ट सुची", style: AppStyles.text16Px)))),
        const SizedBox(width: 10)
      ]),
      const SizedBox(height: 10),
      const Divider(color: AppColors.primary, thickness: 1.5),
      const SizedBox(height: 10),
      dateAndFilter(),
      const SizedBox(height: 10),
      Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), offset: const Offset(0, 2), blurRadius: 2)],
          ),
          child: const Divider(color: AppColors.primary, thickness: 1.5)),
      const SizedBox(height: 5),
      Row(
        children: [
          const SizedBox(width: 2),
          SizedBox(
              // width: MediaQuery.of(context).size.width,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(width: 1),
            Column(
              children: [
                Text("परिवार क्र.सं", style: AppStyles.text14PxBold.primary),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 5),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text("#३४५६७८९", style: AppStyles.text14Px.white, textAlign: TextAlign.center),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("वार्ड  नं.", style: AppStyles.text14PxBold.primary),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 1),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text("१", style: AppStyles.text18Px.white, textAlign: TextAlign.center),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("घरमुलिको नाम", style: AppStyles.text14PxBold.primary),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 1),
                  child: Container(
                    width: 90,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text("सुनिल घिमिरे  ", style: AppStyles.text14Px.white, textAlign: TextAlign.center),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("", style: AppStyles.text14PxBold.primary),
                const SizedBox(height: 2),
                Container(
                  height: 50,
                  color: AppColors.primary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                        width: 50,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            // addProduct(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF34A853),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                          ),
                          child: const Icon(Icons.done),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 50,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF34A853),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                          ),
                          child: Text("मेटाउन", style: AppStyles.text9Px),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ])),
          const SizedBox(height: 5),
        ],
      ),
    ]));
  }

  Widget dateAndFilter() {
    return Row(
      children: [
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              color: AppColors.primary,
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(Icons.calendar_today, color: Colors.white, size: 25),
                  const SizedBox(width: 5),
                  Text("८ वैशाख २०८० – ३१ वैशाख २०८०", style: AppStyles.text13Px.white),
                  const SizedBox(width: 5),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 25),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              width: 150,
              color: AppColors.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 5),
                  const Icon(Icons.filter_list_outlined, color: Colors.white, size: 25),
                  const SizedBox(width: 5),
                  Text("फिल्टर", style: AppStyles.text13Px.white),
                  const SizedBox(width: 5),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 25),
                  const SizedBox(width: 5),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
