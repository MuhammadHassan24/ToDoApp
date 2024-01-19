import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class LoginViewModel extends BaseViewModel {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordshow = true;
  final URL = "http://192.168.53.6:4000/login";
  userLogin() async {
    try {
      var body = {
        "email": emailController.text,
        "password": passwordController.text,
      };
      var response = await http.post(
        Uri.parse(URL),
        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      var jsonRes = jsonDecode(response.body);
        if (jsonRes["status"]) { 
        } else {
          
        }

      print(jsonRes["status"]);
    } catch (e) {
      print("Error during registration: $e");
    }
  }
}
