import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget{

  final bookmark = Container(
      width: 30.0,
      height: 30.0,
      decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white
      ),
      child: const Center(
        child: Icon(
            Icons.bookmark_border,
            size: 20.0,
            color: Color(0xFF4268D3)
        ),
      )
  );

  final images = Container(
      width: 30.0,
      height: 30.0,
      decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white54
      ),
      child: const Center(
        child: Icon(
            Icons.image_outlined,
            size: 20.0,
            color: Color(0xFF4268D3)
        ),
      )
  );

  final agregar = Container(
      width: 50.0,
      height: 50.0,
      decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white
      ),
      child: const Center(
        child: Icon(
            Icons.add,
            size: 40.0,
            color: Color(0xFF4268D3)
        ),
      )
  );

  final mailButton = Container(
      width: 30.0,
      height: 30.0,
      decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white54
      ),
      child: const Center(
        child: Icon(
            Icons.mail_outline,
            size: 20.0,
            color: Color(0xFF4268D3)
        ),
      )
  );

  final profileButton = Container(
      width: 30.0,
      height: 30.0,
      decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white54
      ),
      child: const Center(
        child: Icon(
            Icons.person_outline,
            size: 20.0,
            color: Color(0xFF4268D3)
        ),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(
            top: 12.0,
            left: 20.0,
            right: 20.0
        ),
        child: Row(
          children: [
            Expanded(child: bookmark),
            Expanded(child: images),
            Expanded(child: agregar),
            Expanded(child: mailButton),
            Expanded(child: profileButton)
          ],
        )
    );
  }

}