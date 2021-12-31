import 'package:flutter/material.dart';
import 'package:Dool/screens/payment.dart';
import 'screens/login_screen.dart';

import 'screens/home.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => new LoginScreen(),
        '/paypage': (context) => new payment(),
        '/home': (context) => new Home(),
      },
      // Navigator.pop(context);for going back
    );
  }
}
