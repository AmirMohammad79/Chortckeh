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
                    color: Color.fromRGBO(143, 148, 251, .2),
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
                        TextField(
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "First Name",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        TextField(
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Last Name",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email address",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        PasswordField(),
                        PasswordField(),
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
