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
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
