// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyArGcUxAJwfSMsojubVIAXo3KyOjC4CfuU',
    appId: '1:1086769164386:web:0d14d4ea62b8163c66213b',
    messagingSenderId: '1086769164386',
    projectId: 'citydangersalert-c3b52',
    authDomain: 'citydangersalert-c3b52.firebaseapp.com',
    storageBucket: 'citydangersalert-c3b52.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBK9d9JbfMBdaZXK-sHn-bWYemn36nQfiA',
    appId: '1:1086769164386:android:0e6b7b4eb33cfddf66213b',
    messagingSenderId: '1086769164386',
    projectId: 'citydangersalert-c3b52',
    storageBucket: 'citydangersalert-c3b52.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKfrsA7FvwHyW0wj_KXmkCNH2eET5HeqI',
    appId: '1:1086769164386:ios:3620c242b032cc6466213b',
    messagingSenderId: '1086769164386',
    projectId: 'citydangersalert-c3b52',
    storageBucket: 'citydangersalert-c3b52.appspot.com',
    iosClientId: '1086769164386-38vq5qjc14nmkdvr5ketvvtt1f7flbce.apps.googleusercontent.com',
    iosBundleId: 'com.example.cityDangers',
  );
}
