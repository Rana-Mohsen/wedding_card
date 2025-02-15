// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD1ezE4CJOKR3agIMBguubGxHsOq2Wfyz8',
    appId: '1:764858582316:web:5add115a1bd344e86cd889',
    messagingSenderId: '764858582316',
    projectId: 'wedding-card-7f536',
    authDomain: 'wedding-card-7f536.firebaseapp.com',
    storageBucket: 'wedding-card-7f536.firebasestorage.app',
    measurementId: 'G-HGN2E6XBXJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1tGiCJz79OtkI3i0LVxlThFTvfyZsm2s',
    appId: '1:764858582316:android:74bd4ba5b3e792c56cd889',
    messagingSenderId: '764858582316',
    projectId: 'wedding-card-7f536',
    storageBucket: 'wedding-card-7f536.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCE6MpbWpgC9LNe684kRPG50FbF0cMZMW4',
    appId: '1:764858582316:ios:753bf74b4bffeee16cd889',
    messagingSenderId: '764858582316',
    projectId: 'wedding-card-7f536',
    storageBucket: 'wedding-card-7f536.firebasestorage.app',
    iosBundleId: 'com.example.weddingCard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCE6MpbWpgC9LNe684kRPG50FbF0cMZMW4',
    appId: '1:764858582316:ios:753bf74b4bffeee16cd889',
    messagingSenderId: '764858582316',
    projectId: 'wedding-card-7f536',
    storageBucket: 'wedding-card-7f536.firebasestorage.app',
    iosBundleId: 'com.example.weddingCard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD1ezE4CJOKR3agIMBguubGxHsOq2Wfyz8',
    appId: '1:764858582316:web:e837446a10e1274b6cd889',
    messagingSenderId: '764858582316',
    projectId: 'wedding-card-7f536',
    authDomain: 'wedding-card-7f536.firebaseapp.com',
    storageBucket: 'wedding-card-7f536.firebasestorage.app',
    measurementId: 'G-9P0QM4KFNW',
  );
}
