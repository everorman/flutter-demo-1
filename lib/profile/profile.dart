import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/headerProfileBar.dart';

import '../trip/description_place.dart';
import '../trip/headerAppBar.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ListView(
        //   children: [
        //     DescriptionPlace()
        //   ],
        // ),
        HeaderProfileBar("Profile"),
      ],
    );
  }

}