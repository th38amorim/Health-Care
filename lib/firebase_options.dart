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
    apiKey: 'AIzaSyCJRND9vA6XyV5W5_KmmeVRR4Y4xvcSsRY',
    appId: '1:426562933141:web:92baa14568e19f1078a69c',
    messagingSenderId: '426562933141',
    projectId: 'health-care-dde01',
    authDomain: 'health-care-dde01.firebaseapp.com',
    storageBucket: 'health-care-dde01.appspot.com',
    measurementId: 'G-XFP34KPPB8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvfQgZYonYsIU6m9K0hIWfqb2sRQPI2KM',
    appId: '1:426562933141:android:00da7c57c28536a978a69c',
    messagingSenderId: '426562933141',
    projectId: 'health-care-dde01',
    storageBucket: 'health-care-dde01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjL44I1fgv2g0lIleQMgZ8qsiJL4io3tw',
    appId: '1:426562933141:ios:e68f35b6f9495b9078a69c',
    messagingSenderId: '426562933141',
    projectId: 'health-care-dde01',
    storageBucket: 'health-care-dde01.appspot.com',
    iosClientId: '426562933141-3h2otafdf999glerj5sqv6bursnchkrh.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthCare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjL44I1fgv2g0lIleQMgZ8qsiJL4io3tw',
    appId: '1:426562933141:ios:e68f35b6f9495b9078a69c',
    messagingSenderId: '426562933141',
    projectId: 'health-care-dde01',
    storageBucket: 'health-care-dde01.appspot.com',
    iosClientId: '426562933141-3h2otafdf999glerj5sqv6bursnchkrh.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthCare',
  );
}