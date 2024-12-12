import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';
import 'home_page.dart';
import 'signup_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJzmxtZSpUj_2G3zwdgp5DhgeJlCw8gtE",
            appId: "1:29827076979:web:3383a17dad5c2b3ea06b06",
            messagingSenderId: "29827076979",
            projectId: "fir-auth-80a9f"));
  }
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/login',
      routes: {
        '/login': (context) {
          return LoginScreen();
        },
        '/signup': (context) {
          return SignupScreen();
        },
        '/home': (context) {
          return HomePage();
        },
      },
    );
  }
}
