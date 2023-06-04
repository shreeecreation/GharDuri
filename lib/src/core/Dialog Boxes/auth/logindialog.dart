import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ghardhuri/src/app/screens/Auth/Login/login_screen.dart';
import 'package:ghardhuri/src/app/screens/Bottom%20Navigator/home_navigator.dart';
import 'package:ghardhuri/src/app/screens/Draft/bloc/deletedraft_bloc.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';
import 'package:ghardhuri/src/core/API/Form%20API/form_api.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managelogincookie.dart';
import 'package:ghardhuri/src/core/Save%20as%20Draft/saveasdraft.dart';
import 'package:ghardhuri/src/core/TextController/text_controller.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class LoginDialog {
  static void showIncorrectPassword(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: Colors.red, size: 60),
                const SizedBox(height: 15),
                SizedBox(
                    width: 200,
                    child: Center(child: Text('Incorect number or password !', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 2,
                      child: ElevatedButton(
                          onPressed: () {
                            // addProduct(context);
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color(0xFF34A853),
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Retry", style: AppStyles.text16Px))),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void logoutDialog(BuildContext context) {
    // Create the AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.primary, size: 50),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child: Center(
                        child:
                            Text('Are you sure want to Logout from this account !', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          onPressed: () {
                            ManageLoginCookie.deleteCookie();
                            TextControllers.clearAll();
                            Get.offAll(LoginScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColors.primary,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Logout", style: AppStyles.text16Px))),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void saveForm(BuildContext context) {
    // Create the AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.primary, size: 50),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child:
                        Center(child: Text('Are you sure want to save this form ?', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          onPressed: () async {
                            QuestionsDomain.questionsSubmit(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColors.primary,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Save", style: AppStyles.text16Px))),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void saveDraft(BuildContext context, key) {
    // Create the AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.primary, size: 50),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child: Center(
                        child: Text('Are you sure want to save this as a draft ?', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          onPressed: () async {
                            QuestionsDomain.questionsSubmitDraft(key);
                            TextControllers.clearAll();
                            await Future.delayed(const Duration(milliseconds: 1000));
                            Get.offAll(const HomeNavigator());
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColors.primary,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Save", style: AppStyles.text16Px))),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        clearJsonPrefs();
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void askDeleteDraft(BuildContext context, family) {
    // Create the AlertDialog
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.primary, size: 50),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child: Center(
                        child: Text('Are you sure want to delete this draft ?', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          onPressed: () async {
                            await deleteSpecificElement(family);
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              Navigator.pop(context);
                              BlocProvider.of<DeletedraftBloc>(context).add(DraftDeleteEvent());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColors.statusRed,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Delete", style: AppStyles.text16Px))),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void askDraftSave(allJsonPrefs, cookie, family, context, jsonBody) {
    // Create the AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.primary, size: 50),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child: Center(
                        child: Text('Are you sure want to save this to a server ?', textAlign: TextAlign.center, style: AppStyles.text18PxSemiBold))),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          onPressed: () async {
                            final response = await FormAPI.formDraftAPI(jsonBody, cookie, family, context);
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColors.primary,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                          child: Text("Save", style: AppStyles.text16Px))),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void cantSaveForm(context) {
    // Create the AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: SizedBox(
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outline, color: AppColors.statusRed, size: 40),
                const SizedBox(height: 15),
                SizedBox(
                    width: 220,
                    child: Center(
                        child: Text('Invalid Input \n परिवार मूलीको नाम ,  परिवार मूलीको लिङ्  खाली हुन सक्दैन',
                            textAlign: TextAlign.center, style: AppStyles.text16PxSemiBold))),
                const SizedBox(height: 10),
                // Center(
                //   child: SizedBox(
                //       height: 45,
                //       width: MediaQuery.of(context).size.width / 1.5,
                //       child: ElevatedButton(
                //           onPressed: () async {},
                //           style: ElevatedButton.styleFrom(
                //               elevation: 0,
                //               backgroundColor: AppColors.primary,
                //               shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                //           child: Text("Save", style: AppStyles.text16Px))),
                // ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary, width: 1.5)),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primary),
                      child: const Text('Cancel')),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
