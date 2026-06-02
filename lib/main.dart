import 'package:flutter/material.dart';
import 'package:login_screen/pages/Login.dart';
import 'package:login_screen/pages/Register.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login': (context) => Login(),
      'register': (context) => Regiter()},

    );
  }
}
