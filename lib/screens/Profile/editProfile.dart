import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  late final String newName ;

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration:  BoxDecoration(
          color:  Color(0xff6F7072),
      border: Border.all(color: Color(0xff6F7072),width: 0)),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Flexible(
              child: Text(
                'ویرایش پروفایل',
                textAlign: TextAlign.center,
                style:kPrimaryTextStyle
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 10.0,
              ),
            ),
            Flexible(
              child: TextField(
                autofocus: true,
                autocorrect: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color(0xFF0A261F), fontWeight: FontWeight.w500),
                cursorColor: const Color(0xFF0A261F),
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0A261F),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0A261F),
                    ),
                  ),
                ),
                onChanged: (newText){
                  newName = newText;
                } ,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed:() {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor),
              child: const Text(
                'ویرایش',
                style: kPrimaryTextStyle
              ),
            )
          ],
        ),
      ),
    );
  }
}
