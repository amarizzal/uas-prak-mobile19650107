import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/data.dart';
import '../model/data_user.dart';

Future<List<User>> fetchUser(http.Client client) async {
  final response = await client.get(Uri.parse('https://reqres.in/api/users'));
  return compute(parseUser, response.body);
}

List<User> parseUser(String responseBody) {
  final parsed = jsonDecode(responseBody)['data'].cast<Map<String, dynamic>>();
  return parsed.map<User>((json) => User.fromJson(json)).toList();
}
