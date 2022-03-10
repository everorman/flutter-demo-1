import 'package:flutter/material.dart';

import 'description_place.dart';
import 'headerAppBar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }

}