import 'dart:async';
import 'dart:io';

import 'package:auth_app/firebase_options.dart';
import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/data/auth_api.dart';
import 'package:auth_app/src/epics/app_epics.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/home.dart';
import 'package:auth_app/src/presentation/login_page.dart';
import 'package:auth_app/src/presentation/profile_page.dart';
import 'package:auth_app/src/presentation/register_page.dart';
import 'package:auth_app/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void _onResponse(dynamic action) {
  if (action is InitializeMarkersSuccessful) {}
}

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance);
  final AppEpics epics = AppEpics(authApi: authApi);

  final StreamController<dynamic> controller = StreamController<dynamic>();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        controller.add(action);
      },
    ],
  )
    ..dispatch(const InitializeUser())
    ..dispatch(const InitializeMarkers(response: _onResponse));
  await controller.stream
      .where((dynamic action) => action is InitializeUserSuccessful || action is InitializeUserError)
      .first;

  runApp(GroupApp(store: store));
}

class GroupApp extends StatelessWidget {
  const GroupApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Modulus',
        ),
        title: 'Group App',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/login': (BuildContext context) => const LoginPage(),
          '/register': (BuildContext context) => const RegisterPage(),
          '/profile': (BuildContext context) => const ProfilePage(),
        },
      ),
    );
  }
}
