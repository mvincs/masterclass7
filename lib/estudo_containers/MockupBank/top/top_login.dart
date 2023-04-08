import 'package:flutter/material.dart';
import 'package:flutterplayground/estudo_containers/MockupBank/top/logo_login.dart';
import 'package:flutterplayground/estudo_containers/MockupBank/mockupbank.dart';

class TopLogin extends StatelessWidget {
  static const FontWeight topLoginFontWeight = FontWeight.w600;
  final double maxHeight;

  const TopLogin(this.maxHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    var controller = MockupBank.of(context);

    Text myLogoTitle(String title) => Text(
          title,
          style: TextStyle(
              color: controller.mainTextColor(),
              fontSize: controller.mainTextSize(),
              fontWeight: topLoginFontWeight),
        );

    Text myLogoSubTitle(String title) => Text(
          title,
          style: TextStyle(
              color: controller.subTextColor(),
              fontSize: controller.subTextSize(),
              fontWeight: topLoginFontWeight),
        );

    return Container(
      height: maxHeight,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoLogin(maxHeight * 0.50),
          SizedBox(
            height: maxHeight * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myLogoTitle('Get your Money'),
                myLogoTitle('Under Control'),
              ],
            ),
          ),
          SizedBox(
            height: maxHeight * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myLogoSubTitle('Manage your expenses.'),
                myLogoSubTitle('Seamlessly.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
