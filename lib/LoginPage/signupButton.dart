import 'package:chortkeh/home.dart';
import 'package:flutter/material.dart';
class SignupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 100,
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(149, 149, 218, 1.0),
                Color.fromRGBO(143, 148, 251, .6),
              ],
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Home.id);
            },
            child: const Center(
              child: Text(
                'ثبت نام',
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