import 'dart:ui';

import 'package:flutter/material.dart';

class Stars extends StatelessWidget{
  int starsCount;
  Stars(this.starsCount);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final stars = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final starBorder = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
      ),
    );
    final starsList = <Widget>[];
    for(int i =0; i<5; i++){
      if(i<this.starsCount){
        starsList.add(stars);
      }else{
        starsList.add(starBorder);
      }
    }
    return Row(
      children: starsList,
    );
  }


}