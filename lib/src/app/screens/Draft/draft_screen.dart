import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghardhuri/src/core/API/Auth/setward.dart';
import 'package:ghardhuri/src/core/API/Form%20API/form_api.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/Save%20as%20Draft/saveasdraft.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

import 'bloc/deletedraft_bloc.dart';

class DraftScreen extends StatelessWidget {
  const DraftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          // searchFilter(context),
          const SizedBox(height: 15),
          Container(
              decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), offset: const Offset(0, 2), blurRadius: 2)]),
              child: const Divider(color: AppColors.primary, thickness: 1.5)),
          const SizedBox(height: 15),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: [
              const SizedBox(width: 5),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 5.5,
                  child: Text("परिवार क्र.सं", textAlign: TextAlign.center, style: AppStyles.text14PxBold.primary)),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                  child: Text("वार्ड  नं", textAlign: TextAlign.center, style: AppStyles.text14PxBold.primary)),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: Text("घरमुलिको नाम", textAlign: TextAlign.center, style: AppStyles.text14PxBold.primary)),
            ]),
          ),
          const SizedBox(height: 15),
          BlocBuilder<DeletedraftBloc, DeletedraftState>(
            builder: (context, state) {
              if (state is DraftDeleteState) {
                return builder();
              }
              return builder();
            },
          ),
        ],
      ),
    );
  }

  FutureBuilder<Map<String, dynamic>> builder() {
    return FutureBuilder<Map<String, dynamic>>(
      future: getJsonPrefs(),
      builder: (context, snapshot) {
        List<dynamic> prefKeys = [];
        if (snapshot.hasData) {
          final jsonPrefs = snapshot.data!;
          prefKeys = jsonPrefs.keys.toList();

          if (jsonPrefs.isNotEmpty) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 0), // ,
              shrinkWrap: true,
              itemCount: jsonPrefs.length,
              itemBuilder: (context, index) {
                final familyNo = prefKeys[index];
                final wardNo = WardNo.wardno;
                final question1_1 = jsonPrefs[prefKeys[index]]['question1_1'];
                final cookie = jsonPrefs[prefKeys[index]]['userId'];

                return component(context, familyNo, question1_1, wardNo, cookie);
              },
            );
          } else {
            return const Center(
                child: Column(
              children: [
                SizedBox(height: 20),
                Text('No Draft found here'),
              ],
            ));
          }
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
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

Widget component(context, family, name, ward, cookie) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          const SizedBox(width: 2),
          Expanded(
            // Add Expanded widget to make the row expand horizontally
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5.5,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text(
                          family,
                          style: AppStyles.text14Px.white,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text(
                          ward,
                          style: AppStyles.text14Px.white,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, left: 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 50,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text(
                          name,
                          style: AppStyles.text14Px.white,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Container(
                      height: 50,
                      color: AppColors.primary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Align buttons to the right
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () async {
                                final allJsonPrefs = await getAllJsonPrefs();
                                final prefs = allJsonPrefs[family];
                                final jsonBody = json.encode(prefs);

                                LoginDialog.askDraftSave(allJsonPrefs, cookie, family, context, jsonBody);
                                // final response = await FormAPI.formDraftAPI(jsonBody, cookie, family, context);
                           
                              },
                              icon: const Icon(Icons.done),
                              color: const Color(0xFF34A853),
                              padding: const EdgeInsets.all(2),
                              constraints: const BoxConstraints(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () async {
                                LoginDialog.askDeleteDraft(context, family);
                              },
                              icon: const Icon(Icons.delete),
                              color: Colors.red,
                              padding: const EdgeInsets.all(2),
                              constraints: const BoxConstraints(),
                              tooltip: "मेटाउन",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 5),
    ],
  );
}

Widget searchFilter(context) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.1,
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
        )),
  ]);
// const SizedBox(height: 10),
}
