import 'package:flutter/material.dart';
import '../utilidades/header.dart';
import 'imagesList.dart';

class HeaderAppBar extends StatelessWidget{
  String title = "Bienvenido";

  HeaderAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Header(title, 250),
        ImageList()
      ],
    );
  }


}