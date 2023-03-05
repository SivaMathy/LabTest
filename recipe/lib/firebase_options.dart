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
    apiKey: 'AIzaSyAcXvOv0uZLSzdm_0ZZL0LEF2QRtz_PPp4',
    appId: '1:918692874187:web:5aad6ebf744ba9e9b5d84e',
    messagingSenderId: '918692874187',
    projectId: 'recipe-e3ae5',
    authDomain: 'recipe-e3ae5.firebaseapp.com',
    storageBucket: 'recipe-e3ae5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx2csxj6H6p28PSBnDnnlkhUGKZj2it8c',
    appId: '1:918692874187:android:6b2097275d9456b3b5d84e',
    messagingSenderId: '918692874187',
    projectId: 'recipe-e3ae5',
    storageBucket: 'recipe-e3ae5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkJhd_26b7VO0cvahMpsPlo3vyNWCidHk',
    appId: '1:918692874187:ios:036e5e318f5a3f64b5d84e',
    messagingSenderId: '918692874187',
    projectId: 'recipe-e3ae5',
    storageBucket: 'recipe-e3ae5.appspot.com',
    iosClientId: '918692874187-our0kmulu9dibaaj2op4et9cip4uvcuj.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkJhd_26b7VO0cvahMpsPlo3vyNWCidHk',
    appId: '1:918692874187:ios:036e5e318f5a3f64b5d84e',
    messagingSenderId: '918692874187',
    projectId: 'recipe-e3ae5',
    storageBucket: 'recipe-e3ae5.appspot.com',
    iosClientId: '918692874187-our0kmulu9dibaaj2op4et9cip4uvcuj.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipe',
  );
}
