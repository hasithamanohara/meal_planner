import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/atomwidgets/customcontainer.dart';
import 'package:samsungfoodapp/components/atomwidgets/xplorepopularcreatorscard.dart';
import 'package:samsungfoodapp/constant/colors.dart';
import 'package:samsungfoodapp/constant/sampledataset.dart';

class XplorePopularCreators extends StatefulWidget {
  const XplorePopularCreators({super.key});

  @override
  State<XplorePopularCreators> createState() => _XplorePopularCreatorsState();
}

class _XplorePopularCreatorsState extends State<XplorePopularCreators> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: screenHeight * 0.32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WhiteColorBackground),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Top Categories"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("See all"),
                )
              ],
            ),
          ),
          CustomContainer(
            height: 180,
            child: XplorePopulaerCreatorCard(
              PopularCreatorsData: FOOD_DATA,
            ),
          )
        ]),
      ),
    );
  }
}
