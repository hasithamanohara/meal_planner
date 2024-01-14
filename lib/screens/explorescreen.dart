import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/atomwidgets/xplorecommuniycard.dart';
import 'package:samsungfoodapp/components/widgets/horizontallist.dart';
import 'package:samsungfoodapp/components/widgets/topcategoriesscrollview.dart';
import 'package:samsungfoodapp/components/widgets/xplorecommuniti.dart';
import 'package:samsungfoodapp/components/widgets/xplorecustomappbar.dart';
import 'package:samsungfoodapp/constant/sampledataset.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const ExploreCustomAppBar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HorizontalList(items: FOOD_DATA),
          Container(
            height: screenHeight * 0.7275,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const topcategoriesscrollview(),
                  SizedBox(
                    height: 15,
                  ),
                  XploreCommunities(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 200,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: screenHeight * .07,
            color: const Color.fromARGB(255, 255, 255, 255),
          )
        ],
      ),
    );
  }
}
