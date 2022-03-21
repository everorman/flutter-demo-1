import 'package:flutter/material.dart';
import '../../../widgets/header.dart';
import 'profileActions.dart';
import 'profileDetail.dart';

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