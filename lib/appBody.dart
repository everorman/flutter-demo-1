import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile.dart';
import 'package:platzi_trips_app/searchTrips.dart';

import 'homeTrips.dart';

class AppBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppBody();
  }

}

class _AppBody extends State<AppBody>{
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    Profile()
  ];

  int indexTap = 0;

  void onTabClicked(int index){
    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(

          onTap: onTabClicked,
          currentIndex: indexTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ''
            )
          ],
        ),
      )
    );
  }

}