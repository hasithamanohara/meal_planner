import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/widgets/horizontallist.dart';
import 'package:samsungfoodapp/components/widgets/recipforoven.dart';
import 'package:samsungfoodapp/components/widgets/topcategoriesscrollview.dart';
import 'package:samsungfoodapp/components/widgets/xplorecommuniti.dart';
import 'package:samsungfoodapp/components/widgets/xplorecustomappbar.dart';
import 'package:samsungfoodapp/components/widgets/xplorepopularcreators.dart';
import 'package:samsungfoodapp/components/widgets/xplorerecipmaylike.dart';
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
                  XplorePopularCreators(),
                  SizedBox(
                    height: 15,
                  ),
                  RecipBrowsContainer(),
                  //oven browse
                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      shrinkWrap:
                          true, // this will limit the GridView to the size of its children
                      physics:
                          NeverScrollableScrollPhysics(), // this will disable scrolling in the GridView
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return XploreMayLikeRecip();
                      },
                    ),
                  ),
                  // XploreMayLikeRecip(),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: screenHeight * .07,
            color: Color.fromARGB(255, 0, 0, 0),
          )
        ],
      ),
    );
  }
}
