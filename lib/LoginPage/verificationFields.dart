import 'package:flutter/material.dart';
import 'package:chortkeh/constant/constant.dart';
import './passwordField.dart';

class VerificationFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(104, 109, 250, 0.4666666666666667),
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
              child: TextFormField(
                textAlign: TextAlign.right,
                cursorColor: kPrimeryColor,
                style: const TextStyle(color: kPrimeryColor),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.phone_enabled_rounded,
                  color: Color.fromRGBO(104, 109, 250, 0.4666666666666667),),
                  border: InputBorder.none,
                  hintText: 'شماره تلفن',
                  hintStyle: TextStyle(color: Colors.grey[400] ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: PasswordField(passwordFildeName: 'رمز عبور',),
            )
          ],
        ),
      );
  }
}
