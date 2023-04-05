import 'package:chortkeh/changepassword.dart';
import 'package:chortkeh/forgetpassword.dart';
import 'package:chortkeh/home.dart';
import 'package:chortkeh/profile.dart';
import 'package:chortkeh/register.dart';
import 'package:chortkeh/splash_screen.dart';
import 'package:chortkeh/verification.dart';
import 'package:chortkeh/wellcome.dart';
import 'package:flutter/material.dart';
import 'package:chortkeh/login.dart';

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
        Login.id: (context) => Login(),
        Changepassword.id: (context) => Changepassword(),
        Forgetpassword.id: (context) => Forgetpassword(),
        Register.id: (context) => Register(),
        Profile.id : (context) => Profile(),
        Wellcome.id : (context) => Wellcome(),
        Verification.id : (context) => Verification(),
      },
    );
  }
}
