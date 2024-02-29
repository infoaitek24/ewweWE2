import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBI6Qq0_LCuHIJClmx2Olm4y65Mz71DBmU",
            authDomain: "boss-chat-p4iw23.firebaseapp.com",
            projectId: "boss-chat-p4iw23",
            storageBucket: "boss-chat-p4iw23.appspot.com",
            messagingSenderId: "82352517903",
            appId: "1:82352517903:web:93f9c9011cbe30aa56047a"));
  } else {
    await Firebase.initializeApp();
  }
}
