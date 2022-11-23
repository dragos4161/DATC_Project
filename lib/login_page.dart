import 'package:city_dangers_alert/register_page.dart';
import 'package:flutter/material.dart';
import 'custom_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:city_dangers_alert/functions/auth_functions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String email = '';
  String password = '';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_login.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 300, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                    child: CustomInput(
                  icon: Icons.email_outlined,
                  message: 'Enter e-mail',
                  controller_: _emailController,
                  isPassword: false,
                )),
                SizedBox(height: 30),
                Center(
                    child: CustomInput(
                        icon: Icons.password_outlined,
                        message: 'Enter password',
                        controller_: _passwordController,
                        isPassword: true)),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Account?  ',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20, fontFamily: 'Modulus', fontWeight: FontWeight.bold
                            //fontFamily: 'Modulus-Bold',
                            ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage()));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color.fromRGBO(195, 51, 127, 1),
                              fontSize: 20,
                              fontFamily: 'Modulus',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(195, 51, 127, 1),
                    radius: 43,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 5),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 43,
                          ),
                          color: Color.fromRGBO(30, 24, 73, 1),
                          onPressed: () async {
                            signIn(_emailController.text, _passwordController.text);
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
