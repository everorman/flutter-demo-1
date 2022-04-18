import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/userBloc.dart';
import 'package:platzi_trips_app/appBody.dart';
import 'package:platzi_trips_app/widgets/buttonGeneric.dart';
import 'package:platzi_trips_app/widgets/header.dart';

import '../../../Place/ui/screens/homeTrips.dart';

class SigninScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SigninScreen();
  }

}

class _SigninScreen extends State<StatefulWidget>{
  late UserBlock userBlock;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    this.userBlock = BlocProvider.of(context);
    return _handCurrentSession();
  }

  Widget _handCurrentSession(){
    return StreamBuilder(
      stream: userBlock.authStatus,
      builder: (BuildContext context, AsyncSnapshot snaphot) {
        if(!snaphot.hasData || snaphot.hasError){
          return signinGoogleUI();
        } else {
          return AppBody();
        }
      }
    );
  }
  
  Widget signinGoogleUI(){
    return Scaffold(
      body: Stack(
        children: [
          Header("", MediaQuery.of(context).size.height),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome \nThis is your Travel App",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                ),
                ButtonGeneric(
                    text: "Login with gmail",
                    onPressed: (){
                      userBlock.signIn()
                          .then((UserCredential value) => {
                        print("El usuario fue creado ${value.user?.displayName}")
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}