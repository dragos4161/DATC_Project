import 'package:firebase_auth/firebase_auth.dart';
import 'package:city_dangers_alert/api/remote_services.dart';

void signUp (String email, String password, String name) async{
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
  final user = FirebaseAuth.instance.currentUser!;
  var userdta = {
    "id" : user.uid,
    "name": name
  };

  await RemoteServices().postUser(userdta);
}

void signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
  } on FirebaseAuthException catch (e){
  }
}

