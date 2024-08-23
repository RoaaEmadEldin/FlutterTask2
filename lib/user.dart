import 'package:flutter/material.dart';

class User{
  String username;
  String? profileImage;
  String name;
  String address;

  User({required this.username, this.profileImage, required this.name, required this.address});

  @override
  String toString() {
    return name;
  }
}