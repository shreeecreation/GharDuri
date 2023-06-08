import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/API/Auth/get_profile_api.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/ProfileModel/profile_model.dart';
import 'package:ghardhuri/src/core/env/envmodels.dart';
import 'package:ghardhuri/src/core/extensions/colors_extension.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(height: 36, color: Colors.black),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 2, blurRadius: 5, offset: const Offset(0, 3)),
                ],
              ),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text("प्रोफाइल", style: AppStyles.text24PxBold.black),
              ),
            ),
            const SizedBox(height: 20),
            userProfile(context),
            const SizedBox(height: 5),
            logOut(context),
            const SizedBox(height: 5),
          ]),
        ));
  }

  Padding logOut(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 30,
        child: ListTile(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
          tileColor: Colors.white,
          title: Text("Log Out", style: AppStyles.text14PxSemiBold),
          trailing: const Icon(Icons.login, size: 30),
          onTap: () {
            LoginDialog.logoutDialog(context);
            // logoutDialog(context);
          },
        ),
      ),
    );
  }

  Widget userProfile(context) {
    return Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder(
            future: GetProfile.getProfile(),
            builder: (BuildContext context, AsyncSnapshot<ProfileModel?> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 30),
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: snapshot.data!.picture != null || snapshot.data!.picture != ""
                              ? Image.network(
                                  "${Environment.apiUrl}/public/images/${snapshot.data!.picture}",
                                  fit: BoxFit.fill,
                                )
                              : Image.asset("assets/images/logo.png"),
                        ),
                      ),
                    ),
                    Text(snapshot.data!.fullName, style: AppStyles.text20PxSemiBold),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
                      child: Card(
                        color: const Color(0xFFF3F4FF),
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    const SizedBox(width: 30),
                                    const Text("फोन नम्बर: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 6),
                                    TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: const Color(0xFFFFFFFF),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                            hintText: snapshot.data!.phoneNumber))
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    const SizedBox(width: 30),
                                    const Text("भूमिका: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 6),
                                    TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: const Color(0xFFFFFFFF),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                            hintText: snapshot.data!.role))
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    const SizedBox(width: 30),
                                    const Text("जम्मा सुची बुझाइको: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 6),
                                    TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: const Color(0xFFFFFFFF),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            hintText: snapshot.data!.ward))
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    const SizedBox(width: 30),
                                    const Text("Version ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 6),
                                    TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: const Color(0xFFFFFFFF),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            hintText: "1.5.1"))
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return const Center(child: Text("No data of user "));
            }));
  }
}
