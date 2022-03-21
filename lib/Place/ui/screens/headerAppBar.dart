import 'package:flutter/material.dart';
import '../../../widgets/header.dart';
import '../widgets/imagesList.dart';

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