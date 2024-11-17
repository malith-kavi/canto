import 'package:canto/screens/login_screen.dart';
import 'package:canto/screens/routes_screen.dart';
import 'package:canto/screens/signup_screen.dart';
import 'package:canto/screens/splash_screen.dart';
import 'package:canto/screens/student_dashboard.dart';
import 'package:canto/screens/student_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'canto',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: StudentMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

