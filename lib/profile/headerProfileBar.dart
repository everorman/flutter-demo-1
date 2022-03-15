import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/profileDetail.dart';
import '../utilidades/header.dart';
import 'profileActions.dart';

class HeaderProfileBar extends StatelessWidget{
  String title;

  HeaderProfileBar(this.title);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Header(title, 300),
        Column(
          children: [
            ProfileDetail(),
            ProfileActions()
          ],
        )

      ],
    );
  }


}