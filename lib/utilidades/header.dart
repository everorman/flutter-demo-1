import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  String title="Popular";
  double headerHeight;
  Header(this.title, [this.headerHeight = 250]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: headerHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xff584cd1)
          ],
          begin: FractionalOffset(0.2, 0),
          end:  FractionalOffset(1, 0.6),
          stops: [0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }

}