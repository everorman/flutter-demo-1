import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilidades/circleImage.dart';

class ProfileDetail extends StatelessWidget{
  String name;
  String email;
  ProfileDetail([this.name = "Evert Ortiz", this.email = "evert.ortiz.m@gmail.com"]);
  @override
  Widget build(BuildContext context) {
    final userName= Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
          color: Colors.white
        ),
      ),
    );
    final userEmail = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        email,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            color: Colors.white38
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userEmail
      ],
    );

    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(
          top: 100
      ),
      child: Row(
          children: <Widget>[
            CircleImage("assets/images/people.png"),
          userDetails
          ]
      ),
    );

  }

}