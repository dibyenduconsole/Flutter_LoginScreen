import 'package:flutter/material.dart';
import 'package:login_screen/app_screen/dashboard_screen.dart';
import 'package:login_screen/app_screen/login_screen.dart';
import 'package:login_screen/app_screen/signup_screen.dart';
import 'package:login_screen/app_screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "SplashScreen",
    theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    
routes: <String, WidgetBuilder> {
      '/loginScreen': (BuildContext context) => LoginScreen(),
      '/signupScreen': (BuildContext context) => SignUpScreen(),
      '/dashboardScreen': (BuildContext context) => DashboardScreen()
    },


  ));
}