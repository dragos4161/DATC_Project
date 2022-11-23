import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:city_dangers_alert/api/remote_services.dart';
import 'package:city_dangers_alert/api/user.dart';
class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserData? _user;
  var isLoaded = false;
  String name = '';
  final user = FirebaseAuth.instance.currentUser!;
  @override
  void initState(){
    super.initState();
    getUserName();
  }
  getUserName() async{
    _user = await RemoteServices().getUser(user.uid);
    if (_user != null){
      setState(() {
        isLoaded = true;
        name = _user!.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
                name,
                style: TextStyle(
                  fontSize: 30,
                ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
              icon: Icon(Icons.arrow_back,size: 32,),
              label: Text('Sign Out',style: TextStyle(fontSize: 24),),
              onPressed: (){
                FirebaseAuth.instance.signOut();
              },
            ),

          )
        ],
      ),

    );
  }
}