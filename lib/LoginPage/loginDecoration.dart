// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child:  Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Image.asset(
                    'assets/images/logo-dark.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
