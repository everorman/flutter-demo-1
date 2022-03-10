import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:platzi_trips_app/trip/review.dart';
import 'listReview.dart';
import '../utilidades/stars.dart';
import 'description.dart';
import '../utilidades/buttonRound.dart';


class DescriptionPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final faker = new Faker();
    final textExample = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
              "Lorem lorem",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Stars(faker.randomGenerator.integer(4))

      ],

    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        Description(textExample),
        ButtonRound('Navigate'),
        ListReview()
      ],
    );
  }

}