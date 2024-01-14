import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height;

  CustomContainer({required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: child,
    );
  }
}
