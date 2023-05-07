import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/user_attendance.dart';

class AttendanceService {
  static const baseUrl = 'http://api.instant-ss.com/api/v1/';
  static const String attendancePath = "attendance";


  Future<Response> postAttendance(Map<String, dynamic> data) async {
    final headers = {"content-type": "application/json"};
    Uri url = Uri.parse('$baseUrl$attendancePath');
    final jsonBody = jsonEncode(data);

    try {
      final response = await http.post(url, body: jsonBody, headers: headers);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final apiResponse = Response.fromJson(jsonData);
        return apiResponse;
      } else {
        throw Exception('Failed to submit attendance.');
      }
    } catch (e) {
      throw Exception('Failed to connect to the API.');
    }
  }
}