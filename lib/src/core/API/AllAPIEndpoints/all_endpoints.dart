import 'package:ghardhuri/src/core/env/envmodels.dart';

class AllAPIEndpoint {
  static String loginAPI = "${Environment.apiUrl}/auth/login";

  static String sendForm = "${Environment.apiUrl}/suchi/create-suchi";
  static String toleapi = "${Environment.apiUrl}/basic";
  static String profileapi = "${Environment.apiUrl}/user/get-profile";
}
