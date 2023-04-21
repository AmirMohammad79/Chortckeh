// ignore_for_file: file_names, unused_import, use_key_in_widget_constructors

import 'package:chortkeh/LoginPage/PhoneNumberFild.dart';
import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/AuthProvider.dart';
import './passwordField.dart';
import 'login_Button.dart';

class VerificationFields extends StatefulWidget {
  final mobileController = TextEditingController();

  final passwordController = TextEditingController();

  String errorMessage = '';
  get mobileControllerGeter => mobileController;
  get passwordControllerGeter => passwordController;

  @override
  State<VerificationFields> createState() => _VerificationFieldsState();
}

class _VerificationFieldsState extends State<VerificationFields> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kPrimaryColor, width: 1),
      ),
      child: Form(
        key: _formKey,
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
                child: Phone_Number_Field(
                    controller: widget.mobileController, errorMessage: widget.errorMessage)),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: PasswordField(
                passwordFildeName: 'رمز عبور',
                errorMessage:widget.errorMessage,
                controller: widget.passwordController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
