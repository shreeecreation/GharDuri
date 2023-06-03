import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghardhuri/src/app/screens/Draft/bloc/deletedraft_bloc.dart';
import 'package:ghardhuri/src/core/API/AllAPIEndpoints/all_endpoints.dart';
import 'package:ghardhuri/src/core/API/ManageCookie/managecookie.dart';
import 'package:ghardhuri/src/core/Save%20as%20Draft/saveasdraft.dart';
import 'package:ghardhuri/src/core/utils/toast.dart';
import 'package:http/http.dart' as http;

class FormAPI {
  static Future<http.Response?> formAPI(formData) async {
    final url = Uri.parse(AllAPIEndpoint.sendForm);
    print(formData);
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
        Toasts.uploadDraftToast();
        return response;
      } else if (code == 400) {
      } else if (code == 500) {}
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<http.Response?> formDraftAPI(formData, cookie, key, context) async {
    final url = Uri.parse(AllAPIEndpoint.sendForm);
    try {
      final response = await http.post(
        url,
        body: formData,
        headers: {'Content-Type': 'application/json', 'Cookie': cookie}, // Replace with your headers if needed
      );
      var code = response.statusCode;

      if (code >= 200 && code < 300) {
        await deleteSpecificElement(key);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          BlocProvider.of<DeletedraftBloc>(context).add(DraftDeleteEvent());
        });
        Toasts.uploadDraftToast();
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
