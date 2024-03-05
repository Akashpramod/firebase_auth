import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signin_user/loginPage.dart';
import 'package:signin_user/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
           apiKey: "AIzaSyDbZlmgd213ViyRLZSZ69JEcosSHlRBSU4",
  authDomain: "login-daf14.firebaseapp.com",
  projectId: "login-daf14",
  storageBucket: "login-daf14.appspot.com",
  messagingSenderId: "747599169253",
  appId: "1:747599169253:web:78a2f16d5630822bc5760c",
  measurementId: "G-ZY686HDD46"
          ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        home: const SplashScreen(
          child: LoginPage(),
 ));
}
}

