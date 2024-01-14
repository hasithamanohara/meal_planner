import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/atomwidgets/topcategorycard.dart';

class ReusableContainer extends StatelessWidget {
  final List<Map<String, dynamic>> foodData;

  ReusableContainer({required this.foodData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: TopCategoryBuilder(topcategoryData: foodData),
    );
  }
}
