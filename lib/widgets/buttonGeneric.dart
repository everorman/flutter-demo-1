import 'package:flutter/material.dart';

class ButtonGeneric extends StatefulWidget{

  double width = 0;
  double height = 0;
  final String text;
  final VoidCallback onPressed;
  ButtonGeneric({
    required this.text,
    required this.onPressed,
    this.height=50,
    this.width=180,
  });

  @override
  State<StatefulWidget> createState() {
    return _ButtonGeneric();
  }

}

class _ButtonGeneric extends State<ButtonGeneric>{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFa7ff84), // arriba
                  Color(0xFF1cbb78) //abajo
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1, 0.6),
                stops: [0, 0.6],
                tileMode: TileMode.clamp

            )
        ),
        child: Center(
          child: Text(
              widget.text,
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