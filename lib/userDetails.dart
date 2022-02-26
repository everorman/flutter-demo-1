import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {

  String details = "Demo 1 Demo 2";
  String name = "Demo";
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
        ),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            color: Colors.black12
        ),
      ),
    );
    final userComent = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComent
      ],
    );

    return userDetails;
  }

}