// @dart=2.9
import 'dart:convert';
import 'package:assessment_topcode/core/models/account.dart';
import 'package:http/http.dart' as http;

class Api {
  String api =
      "http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1/account/findByUserId?userId=UZyMgwSApiN0b148VDrZSAeWkfb2";
  Future<List<Account>> getAccounts() async {
    final response =
        await http.get(Uri.parse(api), headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      print(parsed);

      return parsed.map<Account>((json) => Account.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
