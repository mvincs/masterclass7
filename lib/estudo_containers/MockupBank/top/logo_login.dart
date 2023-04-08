import 'package:flutter/material.dart';
import 'package:flutterplayground/estudo_containers/MockupBank/mockupbank.dart';

class LogoLogin extends StatelessWidget {
  double maxHeight;

  LogoLogin(this.maxHeight, {super.key});

  Widget myLogoContainer(double width, double height,
      BorderRadiusGeometry borderRadius, Color color, double topMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: borderRadius, color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    var controller = MockupBank.of(context);

    return Container(
      height: maxHeight,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myLogoContainer(
                  40,
                  40,
                  BorderRadius.circular(30),
                  controller.logoColor(),
                  0,
                ),
                myLogoContainer(
                    36,
                    36,
                    const BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                    ),
                    controller.logoColor(),
                    4),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myLogoContainer(
                    35,
                    40,
                    const BorderRadius.only(
                      topRight: Radius.circular(60),
                    ),
                    controller.logoColor(),
                    0),
                myLogoContainer(
                    35,
                    40,
                    const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                    ),
                    controller.logoColor(),
                    0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
