import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/models.dart';



Future<Register> register({required String email ,required String username, required String password}) async {
  final response = await http.post(
    Uri.parse('http://192.168.120.202:4443/api/v1/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email' : email,
      'username': username,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    return Register.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else  {
    throw Exception('Failed to login. Error code: ${response.statusCode}');
  }
}