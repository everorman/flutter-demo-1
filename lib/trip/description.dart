import 'dart:ui';

import 'package:flutter/material.dart';

class Description extends StatelessWidget{

  String desciptionPlace;
  Description(this.desciptionPlace);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0
      ),
      child: Text(
        desciptionPlace,
        style: TextStyle(
          fontFamily: "Lato"
        ),
        textAlign: TextAlign.left,
      ),
    );
    return description;
  }


}