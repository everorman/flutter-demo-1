import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/floatingActionFavButton.dart';


class ProfileItemImage extends StatelessWidget{
  String pathImage;
  String title;
  String desciption;
  ProfileItemImage([
    this.pathImage="assets/images/foto-1.jpg",
    this.title="Demo demo",
    this.desciption="Esto es la descripcion de la imagen"
  ]);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 260,
      padding: EdgeInsets.only(
        bottom: 30
      ),
      margin: EdgeInsets.only(
        top:  60,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(this.pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0, 7)
            )
          ]
      ),
    );

    final detail = Container(
      height: 100,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        left: 20,
        right: 20
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              offset: Offset(0, 7)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Lato',
          )),
          Text(
            desciption,
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'Lato',
                color: Colors.black45
            ))
        ],
      ),
    );

    final detailStack = Stack(
      alignment: Alignment(0.7,1.4),
      children: [
        detail,
        FloatingActionFavButton()
      ],
    );
    return Stack(
      alignment: Alignment(0,1.2),
      children: [
        card,
        detailStack
      ],
    );
  }
}