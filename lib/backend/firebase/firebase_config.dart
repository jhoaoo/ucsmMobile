import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBC52YcDKCGrON0LTpaI_2E74jXi60i8aY",
            authDomain: "sm-hub-ac739.firebaseapp.com",
            projectId: "sm-hub-ac739",
            storageBucket: "sm-hub-ac739.firebasestorage.app",
            messagingSenderId: "537059541696",
            appId: "1:537059541696:web:1442858c4592b1dbbfa325",
            measurementId: "G-HQLSVDZ4JZ"));
  } else {
    await Firebase.initializeApp();
  }
}
