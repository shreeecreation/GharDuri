import 'package:ghardhuri/src/core/API/Auth/Login/saveward.dart';
import 'package:ghardhuri/src/core/API/Auth/setward.dart';

class ProfileModel {
  late Future<String> myVariable;
  String ward = "";
  String fullName = "";
  String role = "";
  String phoneNumber = "";
  String documentCount = "";
  String picture = "";

  ProfileModel() {
    initialize();
  }

  Future<void> initialize() async {
    myVariable = WardManager.getCookie();
    ward = await myVariable;
    WardNo.wardno = ward;
    print(WardNo.wardno);
  }
}
