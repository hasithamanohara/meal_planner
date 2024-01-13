import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List<Map<String, Object>> items;

  HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
//get the screen height
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: screenHeight * 0.06,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(items[index]['name'].toString())),
            ),
          );
        },
      ),
    );
  }
}
