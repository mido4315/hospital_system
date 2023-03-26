import 'dart:convert';

import 'package:hospital_system/features/sign%20In/data/models/user_login_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class APIService {
  APIService();
  static const baseUrl = 'http://api.instant-ss.com/api/v1/';
  static const String loginPath = "login";

  static Future<int?> loginPost({
    required String email,
    required String password,
  }) async {
    final headers = {"content-type": "application/json"};
    final json = jsonEncode({'email': email, 'password': password});
    Uri url = Uri.parse('$baseUrl$loginPath');
    Response response = await http.post(
      url,
      body: json,
      headers: headers,
    );
    var responseBody = UserModel.fromJson(jsonDecode(response.body));
    int? x = responseBody.status;
    return x;
  }
}
