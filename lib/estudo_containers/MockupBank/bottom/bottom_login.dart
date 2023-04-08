import 'package:flutter/material.dart';

import '../mockupbank.dart';
import 'loginButton.dart';

class BottomLogin extends StatelessWidget {
  static const FontWeight topLoginFontWeight = FontWeight.w600;
  final double maxHeight;

  const BottomLogin(this.maxHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    var controller = MockupBank.of(context);

    double maxWidth = MediaQuery.of(context).size.width;

    return Container(
      height: maxHeight,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              LoginButton(maxWidth, controller.logoColor(),
                  'Sign Up with Email ID', Colors.white),
              LoginButton(
                  maxWidth,
                  Colors.white,
                  'Sign Up with Google',
                  Colors.black,
                  'http://pngimg.com/uploads/google/google_PNG19635.png'),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Already have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(
                  width: 8,
                ),
                Text('Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
