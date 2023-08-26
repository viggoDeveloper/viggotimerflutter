import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBqf9sLULaWCOkrsuLfp1BokXj5z8nzkq8",
            authDomain: "viggotracker.firebaseapp.com",
            projectId: "viggotracker",
            storageBucket: "viggotracker.appspot.com",
            messagingSenderId: "53369158797",
            appId: "1:53369158797:web:798e103d631ac527a736c4"));
  } else {
    await Firebase.initializeApp();
  }
}
