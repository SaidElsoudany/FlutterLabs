import 'package:flutter/material.dart';
import 'package:lab3/details-screen.dart';
import 'package:lab3/login-screen.dart';
import 'package:lab3/signup-screen.dart';
import 'package:lab3/splash-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashScreen(),
    );
  }
}

