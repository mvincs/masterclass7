import 'package:flutter/material.dart';
import 'package:flutterplayground/estudo_containers/MockupBank/mockupbank.dart';
import 'package:flutterplayground/estudo_containers/MockupBank/top/top_Login.dart';

import 'bottom/bottom_login.dart';

class loginBank extends StatelessWidget {
  const loginBank({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: MockupBank(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopLogin(
            maxHeigth * 0.70,
          ),
          BottomLogin(
            maxHeigth * 0.30,
          ),
        ],
      )),
    );
  }
}
