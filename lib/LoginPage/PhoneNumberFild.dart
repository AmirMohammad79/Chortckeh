// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:chortkeh/constant/constant.dart';
class Phone_Number_Field extends StatefulWidget {
  dynamic controller;
  String errorMessage;
  Phone_Number_Field({required this.controller , required this.errorMessage});

  @override
  State<Phone_Number_Field> createState() => _Phone_Number_FieldState();
}

class _Phone_Number_FieldState extends State<Phone_Number_Field> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller ,
      validator: (String? value){
        if(value!.isEmpty){
          return 'لطفا شماره مبایل خود را وارد کنید';
        }
        return null ;
      },
      onChanged: (text)=> setState(() => widget.errorMessage = ''),
      textAlign: TextAlign.right,
      keyboardType: TextInputType.phone,
      cursorColor: kSecondaryColor,
      style: kPrimaryTextStyle,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.phone_enabled_rounded,
          color: kPrimaryColor,
          size: kIconSize,
        ),
        border: InputBorder.none,
        hintText: 'شماره تلفن',
        hintStyle: TextStyle(color: kHintTextColor ),
      ),
    );
  }
}