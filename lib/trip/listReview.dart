import 'package:flutter/material.dart';
import 'package:platzi_trips_app/trip/review.dart';

class ListReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Review(),
        Review(),
        Review(),
        Review(),
      ],
    );
  }

}