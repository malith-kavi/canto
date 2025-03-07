import 'package:canto/screens/admin_canteen_staff.dart';
import 'package:canto/screens/admin_dashboard.dart';
import 'package:canto/screens/admin_menu.dart';
import 'package:canto/screens/admin_profile_screen.dart';
import 'package:canto/screens/admin_settings_screen.dart';
import 'package:canto/screens/admin_student.dart';
import 'package:canto/screens/admin_token_screen.dart';
import 'package:canto/screens/admin_token_summery_screen.dart';
import 'package:canto/screens/canteen_dashboard.dart';
import 'package:canto/screens/canteen_food_add.dart';
import 'package:canto/screens/canteen_food_edit.dart';
import 'package:canto/screens/canteen_food_screen.dart';
import 'package:canto/screens/canteen_menu.dart';
import 'package:canto/screens/canteen_message.dart';
import 'package:canto/screens/canteen_profile.dart';
import 'package:canto/screens/canteen_settings.dart';
import 'package:canto/screens/cart_screen.dart';
import 'package:canto/screens/feedback_screen.dart';
import 'package:canto/screens/food_screen.dart';
import 'package:canto/screens/login_screen.dart';
import 'package:canto/screens/notification_screen.dart';
import 'package:canto/screens/routes_screen.dart';
import 'package:canto/screens/signup_screen.dart';
import 'package:canto/screens/splash_screen.dart';
import 'package:canto/screens/student_dashboard.dart';
import 'package:canto/screens/student_menu.dart';
import 'package:canto/screens/student_profile.dart';
import 'package:canto/screens/student_settings_screen.dart';
import 'package:canto/screens/student_tokens_screen.dart';
import 'package:canto/screens/token_screen.dart';
import 'package:canto/screens/token_summery.dart';
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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

