import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3iY2sPV3dI4t8-D5OWcG9dpsLow2_Zf4",
            authDomain: "link-up-305soft.firebaseapp.com",
            projectId: "link-up-305soft",
            storageBucket: "link-up-305soft.firebasestorage.app",
            messagingSenderId: "1068038229245",
            appId: "1:1068038229245:web:6617d0d94c35c55517c294",
            measurementId: "G-S078TD8PG1"));
  } else {
    await Firebase.initializeApp();
  }
}
