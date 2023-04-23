// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/constant.dart';
import '../providers/AuthProvider.dart';
import '../home2.dart';
import '../screens/otp.dart';
import './verificationFields.dart';
import './login_Button.dart';
import './signupPage.dart';
import './loginDecoration.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  VerificationFields verificationFields = VerificationFields();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String errorMessage = '';
  bool _pageLogin = true;
  // bool _rememberPassword = false;

  void _togglePage(bool switchme) {
    setState(() {
        _pageLogin = switchme;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LoginDecoration(),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            side: const BorderSide(
                            color: kPrimaryColor,
                          ),
                            backgroundColor:  _pageLogin
                                ?kPrimaryColor
                                : Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: _pageLogin
                                ? Colors.white
                                : kPrimaryColor,
                          ),

                          child:  Text(
                            'ورود',
                            style: TextStyle(
                              fontFamily: kPrimaryFont,
                              fontSize: 20,
                              color:  _pageLogin
                                  ?Colors.white: kPrimaryColor,
                            ),
                          ),
                          onPressed: () {
                            _togglePage(true);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 5.0,),
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            side: const BorderSide(
                              color: kPrimaryColor,
                            ),
                            backgroundColor:  _pageLogin
                                ?  Colors.white
                                :kPrimaryColor,
                            shadowColor: Colors.transparent,
                            foregroundColor: _pageLogin
                                ? Colors.white
                                : kPrimaryColor,
                          ),
                          child:  Text(
                            'ثبت نام',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: kPrimaryFont,
                              color:    _pageLogin
                                ?kPrimaryColor: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            _togglePage(false);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            _pageLogin
                ? Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          VerificationFields(),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                '): رمز عبورم را فراموش کرده ام',
                                style: TextStyle(
                                  fontSize: 18.00,
                                  fontFamily: kSecondaryFont,
                                  fontWeight: FontWeight.w500,
                                  color: kHintTextColor,
                                ),
                              ),
                              onPressed: () => {
                                Navigator.pushNamed(context, Otp.id)
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          LoginButton(
                            subMit: () async {
                              final form = _formKey.currentState;
                              if (!form!.validate()) {
                                return;
                              }
                              final AuthProvider provider =
                              Provider.of<AuthProvider>(context, listen: false);
                              try {
                                var token = await provider.login(
                                    verificationFields.mobileController.text, verificationFields.passwordController.text);
                                Navigator.pushNamed(context, Home2.id);
                              } catch (e) {
                                setState(() {
                                  errorMessage = e.toString().replaceAll('Exception : ', '');
                                });
                              }
                            },
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            errorMessage,
                            style: const TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  )
                : SignupPage()

          ],
        ),
      ),
    );
  }
}
