import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/atomwidgets/customimagecontainer.dart';
import 'package:samsungfoodapp/constant/colors.dart';
import 'package:samsungfoodapp/constant/sampledataset.dart';

class XploreCommunities extends StatefulWidget {
  const XploreCommunities({super.key});

  @override
  State<XploreCommunities> createState() => _XploreCommunitiesState();
}

class _XploreCommunitiesState extends State<XploreCommunities> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: screenHeight * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WhiteColorBackground),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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


          

          //scrollview horizontal cotaie with image here
          ReusableContainer(foodData: FOOD_DATA)
        ]),
      ),
    );
  }
}
