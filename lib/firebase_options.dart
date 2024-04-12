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
    apiKey: 'AIzaSyA6oi76UHfPWdoZOgzxCEvDAlzx-EPaBDU',
    appId: '1:1063334373423:web:0f29dff17eec8883847eda',
    messagingSenderId: '1063334373423',
    projectId: 'shop-8ebc4',
    authDomain: 'shop-8ebc4.firebaseapp.com',
    storageBucket: 'shop-8ebc4.appspot.com',
    measurementId: 'G-6J1LS8JE09',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAC3WUKBAAA4wHnxp3HyPsns5Fmohe6qNQ',
    appId: '1:1063334373423:android:6a9188e8d2ce7513847eda',
    messagingSenderId: '1063334373423',
    projectId: 'shop-8ebc4',
    storageBucket: 'shop-8ebc4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnk0pjV7QVNBhs-9O44DV8R6x7ufwQZxY',
    appId: '1:1063334373423:ios:093c1dbed6aa4c56847eda',
    messagingSenderId: '1063334373423',
    projectId: 'shop-8ebc4',
    storageBucket: 'shop-8ebc4.appspot.com',
    iosBundleId: 'com.example.shop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnk0pjV7QVNBhs-9O44DV8R6x7ufwQZxY',
    appId: '1:1063334373423:ios:c7a248411c24f5c2847eda',
    messagingSenderId: '1063334373423',
    projectId: 'shop-8ebc4',
    storageBucket: 'shop-8ebc4.appspot.com',
    iosBundleId: 'com.example.shop.RunnerTests',
  );
}
