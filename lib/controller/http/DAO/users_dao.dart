import 'dart:convert';

import 'package:http/http.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([UsersDAO])
class UsersDAO {
  final apiUrl = "https://www.fake.com";

  Future<Map<String, dynamic>> getUsers() async {
    try {
      final response = await get(Uri.parse("$apiUrl/login"));
      return jsonDecode(response.body);
    } catch (e) {
      return {};
    }
  }
}
