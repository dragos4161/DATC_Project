import 'package:flutter/material.dart';
import 'package:city_dangers_alert/pages/login_page.dart';
import 'package:city_dangers_alert/pages/register_page.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) =>
    isLogin ? LoginPage() : RegisterPage();

}
