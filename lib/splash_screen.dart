import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chortkeh/LoginPage/loginPage.dart';
import 'package:flutter/material.dart';

import 'constant/constant.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () async {
      Navigator.pushNamed(context, LoginPage.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
        SizedBox(
          width: 250.0,
          child: TextLiquidFill(
            text: 'چرتکه',
            waveColor: kPrimeryColor,
            boxBackgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 200.0,
          ),
        ),
          ],
        ),
      ),
    );
  }
}
