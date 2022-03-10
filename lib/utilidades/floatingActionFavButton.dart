import 'package:flutter/material.dart';

class FloatingActionFavButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionFavButton();
  }

}

class _FloatingActionFavButton extends State<FloatingActionFavButton>{
  IconData icon = Icons.favorite_border;
  void favActionPressed(){
    setState(() {
      if(this.icon == Icons.favorite_border) {
        this.icon = Icons.favorite;
      } else {
        this.icon = Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: 'Fav',
      onPressed: favActionPressed,
      child: Icon(this.icon),
    );
  }

}