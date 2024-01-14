import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  CustomContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: child,
    );
  }
}
