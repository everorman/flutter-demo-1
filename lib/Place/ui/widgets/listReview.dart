import 'package:flutter/material.dart';
import 'review.dart';


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