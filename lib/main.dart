/*
This main page of whatsapp clone.
it is linked in loginpage.


 **/

import 'package:flutter/material.dart';
import 'package:whatsappclone/login/login.dart';
import 'package:get/get.dart';

void main() {
  runApp((const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
      ),
    );
  }
}
