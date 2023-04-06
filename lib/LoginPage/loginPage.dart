import 'package:flutter/material.dart';
import './verificationFields.dart';
import './loginButton.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(

                      //
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      foregroundColor: _pageLogin
                          ? const Color.fromRGBO(143, 148, 251, 1)
                          : Colors.transparent,
                    ),

                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: _pageLogin
                            ? Colors.white
                            : const Color.fromRGBO(143, 148, 251, 1),
                      ),
                    ),
                    onPressed: () {
                      _togglePage(true);
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(

                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      foregroundColor: _pageLogin
                          ? const Color.fromRGBO(143, 148, 251, 1)
                          : Colors.transparent,
                    ),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: _pageLogin
                            ? const Color.fromRGBO(143, 148, 251, 1)
                            : Colors.white,
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
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1),
                                ),
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoginButton(),
                        // FadeAnimation(
                        //   0.5,
                        //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: <Widget>[
                        //       Text(
                        //         "New User?",
                        //       ),
                        //       FlatButton(
                        //         highlightColor: Colors.transparent,
                        //         splashColor: Colors.transparent,
                        //         child: Text(
                        //           "Sign Up",
                        //           style: TextStyle(
                        //             color: Color.fromRGBO(143, 148, 251, 1),
                        //           ),
                        //         ),
                        //         onPressed: () => {},
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
