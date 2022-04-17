import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/buttonGeneric.dart';
import 'package:platzi_trips_app/widgets/header.dart';

class SigninScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SigninScreen();
  }

}

class _SigninScreen extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return signinGoogleUI();
  }

  Widget signinGoogleUI(){
    return Scaffold(
      body: Stack(
        children: [
          Header("", MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome \n This is your Travel App",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              ButtonGeneric(text: "Login with gemail", onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}