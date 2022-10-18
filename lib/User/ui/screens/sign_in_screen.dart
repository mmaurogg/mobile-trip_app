import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tripapp/widgets/gradient_back.dart';
import 'package:tripapp/widgets/button_green.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }  
}

class _SignInScreen extends State<SignInScreen>{

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  // creo un metodo a parte por que voy a estar monitorizando la sesion
  // redirecciona si está logiueado
  Widget signInGoogleUI(){
    GoogleSignInAccount? user = _googleSignIn.currentUser;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", 1000.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Welcome to travel App",
                  style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),

                ButtonGreen(
                  text: "Login with Gmail",
                  width: 300.0,
                  height: 50.0,
                  //onPressed: signIn,
                  onPressed: (){
                    signIn();
                        //.then((FirebaseUser user) {});


                  },

                )

              ]
          )
        ],
      ),
    );
  }

  Future<void> signIn() async {
    await _googleSignIn.signIn();
    setState(() {
      //TODO
    });
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    setState(() {
      //TODO
    });
  }
  
}