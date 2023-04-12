import '../constant/constant.dart';
import 'passwordField.dart';
import 'package:flutter/material.dart';
import 'signupButton.dart';

class SignupPage extends StatefulWidget {
  static String id = 'register';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(104, 109, 250, 0.4666666666666667),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        textAlign: TextAlign.right,
                        cursorColor: Colors.purpleAccent,
                        style: const TextStyle(
                            color: kPrimeryColor),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.person,
                            color: kPrimeryColor,
                          ),
                          border: InputBorder.none,
                          hintText: 'نام و نام خانوادگی',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.purpleAccent,
                        style: const TextStyle(
                            color: kPrimeryColor),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.phone_enabled_rounded,
                            color: Color.fromRGBO(
                                104, 109, 250, 0.4666666666666667),
                          ),
                          border: InputBorder.none,
                          hintText: 'شماره تلفن',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                      PasswordField(passwordFildeName: 'رمز عبور',),
                      PasswordField(passwordFildeName:'تکرار رمز عبور',),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SignupButton(),
        ],
      ),
    );
  }
}
