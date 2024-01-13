// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:samsungfoodapp/constant/colors.dart';
import 'package:samsungfoodapp/constant/styles.dart';

class ExploreCustomAppBar extends StatelessWidget {
  const ExploreCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                hintText: "Search Samsung Food",
                hintStyle: xploreCustomAppBarStyle,
                prefixIcon:
                    Icon(Icons.search, size: iconSize, color: BlackColor),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined,
                        size: iconSize, color: BlackColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(xploreAppBarBorderRadius),
                  borderSide: BorderSide(
                      width: xploreAppBarBorderWidth, color: BlackColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(xploreAppBarBorderRadius),
                  borderSide: BorderSide(
                      width: xploreAppBarBorderWidth, color: BlackColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(xploreAppBarBorderRadius),
                  borderSide: BorderSide(
                      width: xploreAppBarBorderWidth, color: BlackColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
