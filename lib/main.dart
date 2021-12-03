import 'package:flutter/material.dart';
import 'package:Dool/screens/Carddemo.dart';
import 'package:Dool/screens/jobPage.dart';
import 'package:Dool/screens/payment.dart';
import 'screens/login_screen.dart';
import 'screens/homepage.dart';
import 'screens/home.dart';
void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': ( context) => new LoginScreen(),
        '/homepage': (context) => new HomePage(),
        '/jobpage': (context) => new jobPage(),
        '/paypage': (context) => new payment(),
        '/carddemo': (context) => new Carddemo(),
        '/home': (context) => new Home(),

      },
        // Navigator.pop(context);for going back
    );
  }
}
