import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:http/http.dart' as http;

class FormAPI {
  static Future<http.Response?> formAPI(formData) async {
    final url = Uri.parse(AllAPIEndpoint.sendForm);
    var cookie = await ManageCookie.getCookie();
    try {
      final response = await http.post(
        url,
        body: formData,
        headers: {'Content-Type': 'application/json', 'Cookie': cookie}, // Replace with your headers if needed
      );
      var code = response.statusCode;
      print(code);
      if (code >= 200 && code < 300) {
        // WidgetsBinding.instance.addPostFrameCallback((_) {
        //   QuestionRoute.navigatorRoute();

        //   // LoginDialogs().showIncorrectPassword(context);
        // });
        return response;
      } else if (code == 400) {
      } else if (code == 500) {}
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
