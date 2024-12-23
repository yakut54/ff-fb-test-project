import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyARSNo0Je06AkzXlLX4ONdKD2mz7a84MW8",
            authDomain: "fb-test-project-5a2cd.firebaseapp.com",
            projectId: "fb-test-project-5a2cd",
            storageBucket: "fb-test-project-5a2cd.firebasestorage.app",
            messagingSenderId: "281673404585",
            appId: "1:281673404585:web:784acd9fb86dd0fa6859b8"));
  } else {
    await Firebase.initializeApp();
  }
}
