import 'package:flutter/material.dart';
import 'header.dart';
import 'imagesList.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Header("Bienvenido"),
        ImageList()
      ],
    );
  }


}