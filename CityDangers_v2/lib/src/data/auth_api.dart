import 'dart:convert';

import 'package:auth_app/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  const AuthApi({required this.auth});

  final FirebaseAuth auth;

  Future<AppUser> createUser({required String email, required String password, required String name}) async {
    final UserCredential credentials = await auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = credentials.user!;
    final String displayName = name;

    await user.updateDisplayName(displayName);
    await postUser(object: <String, dynamic>{'id': user.uid, 'name': name});

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: displayName,
    );
  }

  Future<AppUser?> getUser() async {
    final User? user = auth.currentUser;
    if (user == null) {
      return null;
    }
    return AppUser(
      uid: user.uid,
      email: user.email!,
      displayName: user.displayName!,
    );
  }

  Future<void> postUser({required dynamic object}) async {
    final Uri url = Uri.parse('https://dangersapi.azurewebsites.net/newuser');
    final http.Client client = http.Client();
    final String payload = json.encode(object);
    final Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
    };

    await client.post(url, body: payload, headers: headers);
  }

  Future<dynamic> postDanger({required dynamic danger}) async {
    final Uri url = Uri.parse('https://dangersapi.azurewebsites.net/newdanger');
    final http.Client client = http.Client();
    final String payload = json.encode(danger);
    final Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
    };

    await client.post(url, body: payload, headers: headers);
  }

  Future<List<Danger>> getUserDangers({required String uid}) async {
    final http.Client client = http.Client();
    final http.Response response = await client.get(
      Uri.parse(
        'https://dangersapi.azurewebsites.net/getuserdangers/$uid',
      ),
    );

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;

    return body //
        .map((dynamic item) => Danger.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<List<Danger>> getDangers() async {
    final http.Client client = http.Client();
    final http.Response response = await client.get(
      Uri.parse(
        'https://dangersapi.azurewebsites.net/getdangers',
      ),
    );

    final List<dynamic> body = jsonDecode(response.body) as List<dynamic>;

    return body //
        .map((dynamic item) => Danger.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credentials = await auth.signInWithEmailAndPassword(email: email, password: password);

    final User user = credentials.user!;

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: user.displayName!,
    );
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
