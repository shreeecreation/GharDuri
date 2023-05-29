import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/Dialog%20Boxes/auth/logindialog.dart';
import 'package:ghardhuri/src/core/ProfileModel/profile_model.dart';
import 'package:ghardhuri/src/core/env/envmodels.dart';
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
            Text("     Profile Description", style: AppStyles.text18PxBold),
            const SizedBox(height: 10),
            userProfile(context),
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
          title:  Text("Log Out",style:AppStyles.text14PxSemiBold),
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
              SizedBox(
                height: 90,
                width: 90,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    // ignore: unnecessary_null_comparison
                    child: ProfileModel.picture != null || ProfileModel.picture != ""
                        ? Image.network(
                            "${Environment.apiUrl}/public/images/${ProfileModel.picture}",
                            fit: BoxFit.fill,
                          )
                        : Image.asset("assets/images/logo.png"),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ProfileModel.fullName, style: AppStyles.text20PxSemiBold),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("फोन नम्बर: ${ProfileModel.phoneNumber}", style: AppStyles.text14PxSemiBold),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("भूमिका: ${ProfileModel.role}", style: AppStyles.text14PxSemiBold),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("जम्मा सुची बुझाइको : ${ProfileModel.ward}", style: AppStyles.text14Px),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
