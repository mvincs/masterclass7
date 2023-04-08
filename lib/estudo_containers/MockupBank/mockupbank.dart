import 'package:flutter/material.dart';

class MockupBank extends InheritedWidget {
  static const Color _logoColor = Color(0xFF5e5ce5);
  static const Color _mainTextColor = Color(0xFFfafafa);
  static const Color _subTextColor = Color(0xFF69696b);
  static const double _mainTextSize = 28;
  static const double _subTextSize = 18;

  const MockupBank({required super.child});

  Color logoColor() => _logoColor;
  Color mainTextColor() => _mainTextColor;
  Color subTextColor() => _subTextColor;
  double mainTextSize() => _mainTextSize;
  double subTextSize() => _subTextSize;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MockupBank of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MockupBank>()!;
  }
}
