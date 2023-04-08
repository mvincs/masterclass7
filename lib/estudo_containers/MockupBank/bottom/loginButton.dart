import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  double maxWidth;
  Color backGroundColor;
  Color textColor;
  String title;
  String? imageIconUrl;

  LoginButton(this.maxWidth, this.backGroundColor, this.title, this.textColor,
      [this.imageIconUrl]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 48.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: backGroundColor),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageIconUrl != null
                ? SizedBox(
                    height: 28,
                    child: Image.network(imageIconUrl!, fit: BoxFit.cover),
                  )
                : const SizedBox(),
            Text(
              title,
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
