import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/headerProfileBar.dart';

import '../trip/description_place.dart';
import '../trip/headerAppBar.dart';
import 'profileImageItem.dart';
import 'profileImageList.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4268D3),
                    Color(0xff584cd1)
                  ],
                  begin: FractionalOffset(0.2, 0),
                  end:  FractionalOffset(1, 0.6),
                  stops: [0, 0.6],
                  tileMode: TileMode.clamp
              )
          ),
        ),
        ListView(
          padding: EdgeInsets.only(
            top: 40
          ),
          children: [
            ProfileImageList()
          ],
        ),
        HeaderProfileBar("Profile")
      ],
    );
  }

}