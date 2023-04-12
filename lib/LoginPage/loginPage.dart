import 'package:flutter/material.dart';
import '../constant/constant.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(

                      //
                      backgroundColor:  _pageLogin
                          ?kPrimeryColor
                          : const Color.fromRGBO(
                          143, 148, 251, 0.45098039215686275),
                      shadowColor: Colors.transparent,
                      foregroundColor: _pageLogin
                          ? Colors.white
                          : kPrimeryColor,
                    ),

                    child: const Text(
                      'ورود',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      _togglePage(true);
                    },
                  ),
                  const SizedBox(width: 15.0),
                  TextButton(
                    style: TextButton.styleFrom(

                      //
                      backgroundColor:  _pageLogin
                          ?  const Color.fromRGBO(143, 148, 251, 0.45098039215686275)
                          :kPrimeryColor,
                      shadowColor: Colors.transparent,
                      foregroundColor: _pageLogin
                          ? Colors.white
                          : kPrimeryColor,
                    ),
                    child: const Text(
                      'ثبت نام',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      _togglePage(false);
                    },
                  ),
                ],
              ),
            _pageLogin
                ? Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        VerificationFields(),
                        /* Remember Password */
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: <Widget>[
                        //     Text("Remember Password?"),
                        //     Checkbox(
                        //       value: _rememberPassword ? true : false,
                        //       onChanged: (bool _newValue) {
                        //         setState(() {
                        //             _rememberPassword = _newValue;
                        //           },
                        //         );
                        //       },
                        //     ),
                        //   ],
                        // ),
                          Container(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: TextButton(
                              style: TextButton.styleFrom(

                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: const Text(
                              'فراموشی رمز عبور ؟',
                                style: TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimeryColor,
                                ),
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoginButton(),
                      ],
                    ),
                  )
                : SignupPage()
          ],
        ),
      ),
    );
  }
}
