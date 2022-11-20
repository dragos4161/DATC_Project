import 'package:flutter/material.dart';
import 'package:city_dangers_alert/custom_input.dart';
import 'package:city_dangers_alert/login_page.dart';
import 'package:city_dangers_alert/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Modulus',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}




