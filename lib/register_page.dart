import 'package:flutter/material.dart';
import 'custom_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  String email = '';
  String password = '';
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
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
                Center(child: CustomInput(icon: Icons.person_outline_outlined,message: 'Enter name',controller_: _nameController, isPassword: false,)),
                SizedBox(height: 30),
                Center(child: CustomInput(icon: Icons.email_outlined,message: 'Enter e-mail',controller_: _emailController, isPassword: false,)),
                SizedBox(height: 30),
                Center(child: CustomInput(icon: Icons.password_outlined,message: 'Enter password',controller_: _passwordController, isPassword: true)),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have Account?  ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Modulus',
                            fontWeight: FontWeight.bold
                          //fontFamily: 'Modulus-Bold',
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('Hello');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromRGBO(195, 51, 127, 1),
                              fontSize: 20,
                              fontFamily: 'Modulus',
                              fontWeight: FontWeight.bold
                          ),
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
                      padding: const EdgeInsets.only(bottom: 10,right: 5),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 43,
                        ),
                        color: Color.fromRGBO(30, 24, 73, 1),

                        onPressed: (){
                          print('Pressed');
                        },

                      ),
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