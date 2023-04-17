// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PasswordField extends StatefulWidget {
  String passwordFildeName;
  dynamic controller;
  String errorMessage;
   PasswordField({required this.passwordFildeName , required this.errorMessage, this.controller});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _ishidden = true;


  void _toggleVisibility() {
    setState(() {
        _ishidden = !_ishidden;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller ,
      validator: (String? value){
        if(value!.isEmpty){
          return 'لطفا رمز عبور خود را وارد کنید';
        }
        return null ;
      },
      onChanged: (text)=> setState(() => widget.errorMessage = ''),
      cursorColor: kPrimaryColor,
      textAlign: TextAlign.right,
      obscureText: _ishidden ? true : false,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          icon:Icon( _ishidden ? Icons.visibility_off : Icons.visibility),
          color: kPrimaryColor.withOpacity(0.4),
          onPressed: _toggleVisibility,
        ),
        suffixIcon:  const Icon( Icons.lock ,
        color: kPrimaryColor,
        size: kIconSize),
        border: InputBorder.none,
        hintText: widget.passwordFildeName,
        hintStyle: TextStyle(
          color: kHintTextColor,
        ),
      ),
    );
  }
}
