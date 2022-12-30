import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  void _onResponse(dynamic action) {
    if (action is CreateUserError) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? error.code)));
      }
    } else if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? error.code)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_register.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(195, 51, 127, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    showCursor: false,
                                    controller: _email,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        color: Color.fromRGBO(30, 24, 73, 1),
                                        fontSize: 15,
                                      ),
                                      hintText: 'email',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                    validator: (String? value) {
                                      if (value == null || !value.contains('@')) {
                                        return 'This is not a valid email address';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(195, 51, 127, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    showCursor: false,
                                    controller: _password,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        color: Color.fromRGBO(30, 24, 73, 1),
                                        fontSize: 15,
                                      ),
                                      hintText: 'password',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.length < 6) {
                                        return 'Password must be at least 6 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(195, 51, 127, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    showCursor: false,
                                    controller: _name,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        color: Color.fromRGBO(30, 24, 73, 1),
                                        fontSize: 15,
                                      ),
                                      hintText: 'name',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.length < 3) {
                                        return 'You have to enter a name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Builder(
                          builder: (BuildContext context) {
                            return Center(
                              child: CircleAvatar(
                                backgroundColor: const Color.fromRGBO(195, 51, 127, 1),
                                radius: 43,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10, right: 5),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 43,
                                    ),
                                    color: const Color.fromRGBO(30, 24, 73, 1),
                                    onPressed: () async {
                                      if (!Form.of(context)!.validate()) {
                                        return;
                                      }

                                      final CreateUser action = CreateUser(
                                        email: _email.text,
                                        password: _password.text,
                                        name: _name.text,
                                        response: _onResponse,
                                      );
                                      StoreProvider.of<AppState>(context).dispatch(action);
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Have an Account?  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Modulus',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/login');
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Color.fromRGBO(195, 51, 127, 1),
                                    fontSize: 20,
                                    fontFamily: 'Modulus',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
