import 'package:flutter/material.dart';
import 'package:city_dangers_alert/custom_input.dart';
import 'package:city_dangers_alert/login_page.dart';
import 'package:city_dangers_alert/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:city_dangers_alert/home_page.dart';
import 'package:city_dangers_alert/auth_page.dart';
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Modulus',
//       ),
//       home: LoginPage(),
//     );
//   }
// }

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Modulus',
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            return HomePage(name: '');
          }
          else{
            return AuthPage();
          }
        },
      )
    );
    // return StreamBuilder<User?>(
    //   stream: FirebaseAuth.instance.authStateChanges(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData){
    //       return Scaffold(
    //         body: Center(child: Text("Logged in"),),
    //       );
    //     }
    //     else {
    //       return LoginPage();
    //     }
    //   }
    // );
  }
}



