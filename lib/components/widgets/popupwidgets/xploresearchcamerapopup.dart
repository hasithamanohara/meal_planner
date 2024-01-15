import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomPopupStep1 {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: const Text('Search Ingredent'),
                  onTap: () {
                    Navigator.pop(context);
                    BottomPopupStep2.show(context);
                  },
                ),
                ListTile(
                  title: const Text('Search Dishes'),
                  onTap: () {
                    Navigator.pop(context);
                    BottomPopupStep2.show(context);
                  },
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
    final picker = PickImage();
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
                    picker._pickImageFromGallery().then((_) {
                      picker.show(context);
                    });
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

//image picker functionality

class PickImage {
  File? _selectedImage;

//pickimage from gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    _selectedImage = File(returnImage!.path);
  }

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 600,
            width: double.maxFinite,
            child: _selectedImage != null
                ? Image.file(_selectedImage!)
                : const Text("Please select image"));
      },
    );
  }
}
