// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class XploreMayLikeRecip extends StatefulWidget {
  const XploreMayLikeRecip({super.key});

  @override
  State<XploreMayLikeRecip> createState() => _XploreMayLikeRecipState();
}

class _XploreMayLikeRecipState extends State<XploreMayLikeRecip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 3,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/burger.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              },
              itemCount: 4,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 2,
              ),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: Column(
                      children: [Icon(Icons.save_alt_outlined), Text("Syrup")],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/burger.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
