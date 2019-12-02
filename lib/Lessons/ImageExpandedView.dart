//ImageExpandedView.dart
//This class is used to expand images when they are tapped

import 'package:flutter/material.dart';

class ImageExpandedView extends StatelessWidget {
  final String imagePath;

  ImageExpandedView({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Image.asset(imagePath),
        onTap: () {Navigator.pop(context);},
      ),
    );
  }

}