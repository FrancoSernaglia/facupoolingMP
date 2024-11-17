import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBiEIKRDAjI_wDuL2lizJW-ZKEJO1qWeZc",
            authDomain: "pagomp-92701.firebaseapp.com",
            projectId: "pagomp-92701",
            storageBucket: "pagomp-92701.firebasestorage.app",
            messagingSenderId: "172917177141",
            appId: "1:172917177141:web:9d64210ef9d990a950aa7c",
            measurementId: "G-LRVPXP7RJL"));
  } else {
    await Firebase.initializeApp();
  }
}
