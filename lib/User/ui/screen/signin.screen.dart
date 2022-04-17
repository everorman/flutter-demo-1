import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/userBloc.dart';
import 'package:platzi_trips_app/widgets/buttonGeneric.dart';
import 'package:platzi_trips_app/widgets/header.dart';

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
              ButtonGeneric(
                  text: "Login with gemail",
                  onPressed: (){
                    userBlock.signIn()
                    .then((UserCredential value) => {
                      print("El usuario fue creado ${value.user?.displayName}")
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}