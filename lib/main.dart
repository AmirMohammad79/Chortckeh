import 'package:chortkeh/LoginPage/loginPage.dart';
import 'package:chortkeh/LoginPage/signupPage.dart';
import 'package:chortkeh/changepassword.dart';
import 'package:chortkeh/forgetpassword.dart';
import 'package:chortkeh/home.dart';
import 'package:chortkeh/profile.dart';
import 'package:chortkeh/splash_screen.dart';
import 'package:chortkeh/verification.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        Home.id: (context) => Home(),
        LoginPage.id: (context) => LoginPage(),
        Changepassword.id: (context) => Changepassword(),
        Forgetpassword.id: (context) => Forgetpassword(),
        SignupPage.id: (context) => SignupPage(),
        Profile.id : (context) => Profile(),
        Verification.id : (context) => Verification(),
      },
    );
  }
}
