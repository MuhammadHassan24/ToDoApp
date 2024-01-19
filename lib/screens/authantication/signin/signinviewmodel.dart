import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

const URL = "http://192.168.53.6:4000/registration";

class SignInViewModel extends BaseViewModel {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordshow = true;
  bool isNotValidate = false;

  userRegister() async {
    try {
      var body = {
        "name": nameController.text,
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
      var jsonres = jsonDecode(response.body);

      print(jsonres["status"]);
    } catch (e) {
      print("Error during registration: $e");
    }
  }
}
