// ignore_for_file: file_names, library_private_types_in_public_api, use_build_context_synchronously

import 'package:chortkeh/LoginPage/PhoneNumberFild.dart';
import 'package:chortkeh/screens/Profile/profile.dart';
import 'package:chortkeh/providers/AuthProvider.dart';
import 'package:chortkeh/screens/otp.dart';
import 'package:provider/provider.dart';
import '../constant/constant.dart';
import 'passwordField.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static String id = 'register';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();
  String errorMessage = '';
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
              border: Border.all(
                width: 1,
                color: kPrimaryColor
              )
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
                  child: Form(
                    key: formKey,
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
                          child: TextFormField(
                            controller: firstNameController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'لطفا نام خود را وارد کنید';
                              }
                              return null;
                            },
                            onChanged: (text) =>
                                setState(() => errorMessage = ''),
                            textAlign: TextAlign.right,
                            cursorColor: kSecondaryColor,
                            style: kPrimaryTextStyle,
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.person,
                                color: kPrimaryColor,
                                size: kIconSize,
                              ),
                              border: InputBorder.none,
                              hintText: 'نام',
                              hintStyle: TextStyle(color: kHintTextColor),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                          child: TextFormField(
                            controller: lastNameController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'لطفا نام خانوادگی خود را وارد کنید';
                              }
                              return null;
                            },
                            onChanged: (text) =>
                                setState(() => errorMessage = ''),
                            textAlign: TextAlign.right,
                            cursorColor: kSecondaryColor,
                            style: kPrimaryTextStyle,
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.person,
                                color: kPrimaryColor,
                                size: kIconSize,
                              ),
                              border: InputBorder.none,
                              hintText: 'نام خانوادگی',
                              hintStyle: TextStyle(color: kHintTextColor),
                            ),
                          ),
                        ),
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
                              errorMessage: errorMessage,
                              controller: mobileController),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                          child: PasswordField(
                            passwordFildeName: 'رمز عبور',
                            errorMessage: errorMessage,
                            controller: passwordController,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                          child: PasswordField(
                            passwordFildeName: 'تکرار رمز عبور',
                            errorMessage: errorMessage,
                            controller: passwordConfirmationController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kSecondaryColor,
                      kThirdColor
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: InkWell(
                  onTap: () {
                   Navigator.pushNamed(context,Otp.id) ;
                    // submit();
                  },
                  child: const Center(
                    child: Text(
                      'ثبت نام',
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }

  Future<void> submit() async {
    final form = formKey.currentState;
    if (!form!.validate()) {
      return;
    }
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: false);
    try {
       var token = await provider.register(firstNameController.text, lastNameController.text, mobileController.text, passwordController.text, passwordConfirmationController.text);
      Navigator.pushNamed(context, Profile.id);
    } catch (e) {
      setState(() {
        errorMessage = e.toString().replaceAll('Exception : ', '');
      });
    }
  }
}
