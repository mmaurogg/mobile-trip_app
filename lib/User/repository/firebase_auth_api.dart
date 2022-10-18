import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//Este metodo contiene la logica del negocio de como me voy a conectar
class FirebaseAuthAPI {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);


  Future<UserCredential> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    //Guardar credenciales
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    // ya se autenticó con google sigue con firebase
    UserCredential user = await _auth.signInWithCredential(
        GoogleAuthProvider.credential( idToken: gSA.idToken, accessToken: gSA.accessToken)
    );

    return user;
  }


}