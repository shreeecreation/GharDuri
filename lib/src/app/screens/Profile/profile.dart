import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/login_screen.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managelogincookie.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 20),
                Text("My Profile", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 20),
            Text("     Profile Settings", style: AppStyles.text18PxBold),
            const SizedBox(height: 10),
            logOut(context),
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
          title: const Text("Log Out"),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined, size: 30),
          onTap: () {
            ManageLoginCookie.deleteCookie();
            Get.offAll(LoginScreen());
            // logoutDialog(context);
          },
        ),
      ),
    );
  }

  Widget userProfile(context) {
    return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width - 40,
        child: Card(
          elevation: 0.1,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 90,
              //   width: 90,
              //   child: Container(
              //     decoration: const BoxDecoration(
              //       shape: BoxShape.circle,
              //     ),
              //     child: ClipOval(
              //       child: Profile.picture != null || Profile.picture != ""
              //           ? Image.network(
              //               "${Environment.apiUrl}/public/images/${Profile.picture}",
              //               fit: BoxFit.fill,
              //             )
              //           : Image.asset("assets/images/logo2.png"),
              //     ),
              //   ),
              // ),
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" sds", style: AppStyles.text20PxSemiBold),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Text("dasdasd", style: AppStyles.text14Px),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.phone_outlined),
                      Text("sdasd", style: AppStyles.text14Px),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
