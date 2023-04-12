import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PasswordField extends StatefulWidget {
  String passwordFildeName;
   PasswordField({required this.passwordFildeName});

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
      cursorColor: kPrimeryColor,
      textAlign: TextAlign.right,
      obscureText: _ishidden ? true : false,
      style: const TextStyle(color: kPrimeryColor),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(_ishidden ? Icons.visibility_off : Icons.visibility,
          color: const Color.fromRGBO(104, 109, 250, 0.4666666666666667),),
          onPressed: _toggleVisibility,
        ),
        border: InputBorder.none,
        hintText: widget.passwordFildeName,
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
