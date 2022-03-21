import 'package:flutter/material.dart';

import 'profileImageItem.dart';

class ProfileImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        bottom: 30
      ),
      margin: EdgeInsets.only(
        top: 200,
      ),
      child: Column(
        children: [
          ProfileItemImage("assets/images/foto-1.jpg"),
          ProfileItemImage("assets/images/foto-2.jpg"),
          ProfileItemImage("assets/images/foto-3.jpg"),
          ProfileItemImage("assets/images/foto-4.jpg"),
          ProfileItemImage("assets/images/foto-5.jpg"),
        ],
      ),
    );
  }
}