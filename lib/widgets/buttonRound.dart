import 'package:flutter/material.dart';

class ButtonRound extends StatelessWidget{
  String buttonText = 'Navigate';
  ButtonRound(this.buttonText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Navegando')));
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0xff4268d3),
              Color(0xff584cd1)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp

          )
        ),
        child: Center(
          child: Text(
              this.buttonText,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                  color: Colors.white
              )
          ),

        ),
      ),
    );
  }

}