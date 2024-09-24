import 'package:flutter/material.dart';

class UserLogin {
  String? username;
  String? password;

  UserLogin({this.username, this.password});

  UserLogin.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}

class Register {
  String? email;
  String? username;
  String? password;

  Register({this.email, this.username ,this.password});

  Register.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}