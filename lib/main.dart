import 'package:chortkeh/LoginPage/loginPage.dart';
import 'package:chortkeh/LoginPage/signupPage.dart';
import 'package:chortkeh/screens/cards/add_card_screen.dart';
import 'package:chortkeh/screens/home2.dart';
import 'package:chortkeh/widgets/changepassword.dart';
import 'package:chortkeh/widgets/forgetpassword.dart';
import 'package:chortkeh/screens/home.dart';
import 'package:chortkeh/screens/profile.dart';
import 'package:chortkeh/providers/AuthProvider.dart';
import 'package:chortkeh/screens/splash_screen.dart';
import 'package:chortkeh/screens/otp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> AuthProvider(),
      child: Consumer<AuthProvider>(builder: (context,authProvider , child){
       return MultiProvider(

        providers: [
          ChangeNotifierProvider<AuthProvider>(create: (context)=> AuthProvider()),
        ],
        child: MaterialApp(
          initialRoute: SplashScreen.id,
          routes: {
            '/':(context){
              final authProvider = Provider.of<AuthProvider>(context);
              if(authProvider.isAuthentication){
                return Home();
              }else{
                return LoginPage();
              }
            },
            Home2.id: (context)=> Home2(),
            AddNewCardScreen.id: (context)=>  AddNewCardScreen(),
            SplashScreen.id: (context) => SplashScreen(),
            Home.id: (context) => Home(),
            LoginPage.id: (context) => LoginPage(),
            Changepassword.id: (context) => Changepassword(),
            Forgetpassword.id: (context) => Forgetpassword(),
            SignupPage.id: (context) => SignupPage(),
            Profile.id : (context) => Profile(),
            Otp.id : (context) => Otp(),
          },
        ),
      );})
    );
  }
}
