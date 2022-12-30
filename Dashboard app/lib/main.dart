import 'dart:async';
import 'dart:io';

import 'package:auth_app/firebase_options.dart';
import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/data/auth_api.dart';
import 'package:auth_app/src/epics/app_epics.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/home_page.dart';
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
  )..dispatch(const GetAllDangers());
  await controller.stream
      .where((dynamic action) => action is GetAllDangersSuccessful || action is GetAllDangersError)
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
        title: 'Dashboard',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePage(),
        },
      ),
    );
  }
}
