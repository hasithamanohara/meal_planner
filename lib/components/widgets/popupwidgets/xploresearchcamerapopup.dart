// bottom_popup.dart
import 'package:flutter/material.dart';

class BottomPopupStep1 {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            // decoration: BoxDecoration(
            // color: Colors.blue, borderRadius: BorderRadius.circular(10)
            //     ),
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: const Text('Search Ingredent'),
                  onTap: () => {BottomPopupStep2.show(context)},
                ),
                ListTile(
                  title: const Text('Search Dishes'),
                  onTap: () => {BottomPopupStep2.show(context)},
                ),
              ],
            ),
          );
        });
  }
}

//bottom popup step 2

class BottomPopupStep2 {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            // color: Colors.white,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.camera),
                  title: const Text('Take Photo'),
                  onTap: () {
                    // functionality for taking a photo here
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Photo library'),
                  onTap: () {
                    // functionality for opening the gallery here
                  },
                ),
              ],
            ),
          );
        });
  }
}
