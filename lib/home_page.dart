import 'package:flutter/material.dart';
import 'custom_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:city_dangers_alert/api/remote_services.dart';
import 'package:city_dangers_alert/api/student.dart';
class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);
  HomePage({required this.name});
  final String name;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Student>? students;
  var isLoaded = false;
  String name = '';
  final user = FirebaseAuth.instance.currentUser!;
  @override
  void initState(){
    super.initState();

    get_data();
  }
  get_data() async{

    students = await RemoteServices().getStudents(user.uid);
    if(students != null)
    {
      setState(() {
        isLoaded = true;
        name = students![0].name;
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
                print(user.uid);
                FirebaseAuth.instance.signOut();
              },
            ),

          )
        ],
      ),

    );
  }
}