// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:chortkeh/LoginPage/verificationFields.dart';
import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function? subMit;
  LoginButton({this.subMit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Center(
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                kPrimaryColor,
                kSecondaryColor,
                kBlueColor
              ],
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: InkWell(
            onTap: () {
              subMit!();
            },
            child: const Center(
              child: Text(
                'ورود',
                style: TextStyle(
                  fontFamily: kPrimaryFont,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
