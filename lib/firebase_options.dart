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
        return macos;
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
    apiKey: 'AIzaSyBvuE545oo3lHFRfCLLxpYBadGtDJ6RL6Y',
    appId: '1:1053467109561:web:6899e9268cf290ca531368',
    messagingSenderId: '1053467109561',
    projectId: 'mylez-flutter-chat-app',
    authDomain: 'mylez-flutter-chat-app.firebaseapp.com',
    storageBucket: 'mylez-flutter-chat-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCB1N-hWsFAIn4OKZdYuu73D_tFEUvxq4k',
    appId: '1:1053467109561:android:bcd62b579f61cdba531368',
    messagingSenderId: '1053467109561',
    projectId: 'mylez-flutter-chat-app',
    storageBucket: 'mylez-flutter-chat-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBN2RU57dfRmhEwwX75XbEUEYWPkXO8hxM',
    appId: '1:1053467109561:ios:1e028d4f422c63dc531368',
    messagingSenderId: '1053467109561',
    projectId: 'mylez-flutter-chat-app',
    storageBucket: 'mylez-flutter-chat-app.appspot.com',
    iosClientId: '1053467109561-ffah700aovl02bgtp7bice7pmv2l70gh.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBN2RU57dfRmhEwwX75XbEUEYWPkXO8hxM',
    appId: '1:1053467109561:ios:0f6ea51abe729de8531368',
    messagingSenderId: '1053467109561',
    projectId: 'mylez-flutter-chat-app',
    storageBucket: 'mylez-flutter-chat-app.appspot.com',
    iosClientId: '1053467109561-s3cuubamoopdfg6jf3vq7udnq86jqihr.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
