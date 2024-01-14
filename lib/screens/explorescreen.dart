import 'package:flutter/material.dart';
import 'package:samsungfoodapp/components/atomwidgets/xplorecommuniycard.dart';
import 'package:samsungfoodapp/components/widgets/horizontallist.dart';
import 'package:samsungfoodapp/components/widgets/topcategoriesscrollview.dart';
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
    return Scaffold(
      appBar: AppBar(title: const ExploreCustomAppBar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HorizontalList(items: FOOD_DATA),
          const topcategoriesscrollview(),
          
        ],
      ),
    );
  }
}
