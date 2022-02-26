import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget{
  String imagePath = "assets/images/people.jpg";
  CircleImage(this.imagePath);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final circle = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),

        ),
      ),

    );
    return circle;
  }

}