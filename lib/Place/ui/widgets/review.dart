import 'package:flutter/material.dart';

import 'userDetails.dart';
import '../../../widgets/circleImage.dart';

class Review extends StatelessWidget{
  String details = "Demo 1 Demo 2";
  String name = "Demo";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Row(
      children: [
        new CircleImage("assets/images/people.png"),
        new UserDetail()

      ],
    );
  }

}