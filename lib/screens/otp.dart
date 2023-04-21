import 'package:chortkeh/screens/home2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../widgets/changepassword.dart';
import '../constant/constant.dart';

class Otp extends StatelessWidget {
  static String id = 'verification';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      gradient:  const LinearGradient(
                        colors: [
                          kPrimaryColor,
                          kSecondaryColor,
                          kThirdColor
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        "فعال سازی حساب",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: kVazirFont,
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child:Image.asset(
                        'assets/images/otp_image.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "کد فعال سازی به شماره تلفن شما پیامک شد",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: kPrimaryTextStyle,
                ),
              ),
              const Text(
                "کد ارسال شده را وارد نمایید",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: kVazirFont,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff545454),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 16, 30, 50),
                child: OtpTextField(
                  numberOfFields: 5,
                  showFieldAsBox: true,
                  fieldWidth: 50,
                  filled: true,
                  fillColor: const Color(0x00000000),
                  enabledBorderColor: const Color(0xffaaaaaa),
                  focusedBorderColor: kPrimaryColor,
                  borderWidth: 2,
                  margin: const EdgeInsets.all(0),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  obscureText: false,
                  borderRadius: BorderRadius.circular(8.0),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Color(0xff000000),
                  ),
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {},
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kSecondaryColor,
                      kThirdColor
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color(0xffffffff),
                   onPressed: () {
                    // Navigator.pushNamed(context, Home.id);
                    Navigator.pushReplacementNamed(context,Home2.id);
                   },
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                  ),
                  onPressed: () {  },
                  child: const Text(
                    "ارسال مجدد کد",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontFamily: kVazirFont,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
