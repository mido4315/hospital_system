import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'model/call_model.dart';

class CallsAPIService {
  CallsAPIService();

  static const baseUrl = 'http://api.instant-ss.com/api/v1/';

  static Future<Call?> showCalls({
    required String id,
  }) async {
    final headers = {
      "Authorization":
                      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYzJiNzk4MDYwY2VhMjJmM2IzMDZiNGRjZmE1ZDg4YmVjMzA4OTkyMmJkNTdjMzNkOTZmYWQxOWM5YzlkYWQ2MzIxMDhjZTE5NWRjOWJhNjUiLCJpYXQiOjE2ODM0NDI2MTAuMjAxOTcxLCJuYmYiOjE2ODM0NDI2MTAuMjAxOTc3LCJleHAiOjE3MTUwNjUwMTAuMjAwNjUzLCJzdWIiOiIzMDQiLCJzY29wZXMiOltdfQ.qvk8Z8FH65g_0GoqFb9ogcK7Txok8lPAL3RhIBAUv7-T2liW2hNiVS76f68fgm6eNoAnZIkER38zjk3U_AZFlMb-wSUC-65WhE-MZgfy21DWIz4WI6qt7TbMEBLX64zZt7JWkntngREZxHWvNqJVaNw1UlQBKf6U6lRCmKMrIQ8eRgVLuEwKuqHv0hz8gqrc-MzVNJ6U6vuDywpAkAZemyue1McR4iHJyo2n1S_lfGLEM5D3Evw6E65iPa1fuxaqY52Ajz8e4iu3fjTjpTcFQ0Q8wkHEr6XCYeAoDkCLJLfcrcGKOQXNJDWm9sQarIusRQtp6PLGw8262S46vBabII6h3gMB4-n00m_zok9QX0N5fKp_UPQOhD_Q8B98BX0nGBnedynf0OpC9RZtyJ-Dz3rse5PHQRktYGnVT0mAAizDC3W7HVjtYBJ6Zgi0fcYo7HF-W0dN2OsjqGTozKmTMm-LzRDhaqq5x9AVH6j49M9bTyRG2hoR-HmwnS7otYNrj1Hc_fU_Wx42cKFrX9crqdzbj34Vk2A5SadlFpmsq-g1R4LT-_GlsznohTkWlcpWPLPCoKIbmHdDetCIXtwwYRUUiWCeepkqLcP6CvL3tz53PFEZN366FKRzjtq2whU5N6jb0PF7XHilQLKH0QnCT8Gn2U0Icbdcr2ClKRjNrcw",
      "content-type": "application/json"
    };
    final String callID = "calls/$id";
    Uri url = Uri.parse('$baseUrl$callID');
    Response response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Call responseBody = Call.fromJson(jsonDecode(response.body));
      return responseBody;
    } else {
      throw Exception("Failed to load");
    }
  }
}
