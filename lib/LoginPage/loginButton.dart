import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 50,
        width: 100,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape:    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ],
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
  }
}
