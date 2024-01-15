// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/widgets/popupwidgets/xploresearchcamerapopup.dart';
import 'package:samsungfoodapp/constant/colors.dart';
import 'package:samsungfoodapp/constant/styles.dart';
import 'package:samsungfoodapp/screens/searchscreen.dart';

class ExploreCustomAppBar extends StatelessWidget {
  const ExploreCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.search, size: iconSize, color: BlackColor),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              child: Text(
                "Search Samsung Food",
                style: xploreCustomAppBarStyle,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                BottomPopupStep1.show(context);
              },
              child: Icon(
                Icons.camera_alt_outlined,
                color: BlackColor,
                size: iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
