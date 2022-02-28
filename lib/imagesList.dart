import 'package:flutter/material.dart';
import 'item-image.dart';

class ImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          ItemImage("assets/images/foto-1.jpg"),
          ItemImage("assets/images/foto-2.jpg"),
          ItemImage("assets/images/foto-3.jpg"),
          ItemImage("assets/images/foto-4.jpg"),
          ItemImage("assets/images/foto-5.jpg"),
        ],
      ),
    );
  }

}