import 'package:flutter/material.dart';
import 'package:task2/body_widget.dart';
import 'package:task2/custom_app_bar.dart';
import 'package:task2/user.dart';

import 'app_consts.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(user: User(username: "faresemad", name: "Fares Emad", profileImage: "${assetsImagePath}profile_image.jpeg", address: "Cairo, Egypt")),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  final User user;
  const MyApp({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(username: user.username),
        body: BodyWidget(user: user)
    );
  }
}
