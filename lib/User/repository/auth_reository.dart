import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tripapp/User/repository/firebase_auth_api.dart';

//----------Archivo para controlar las fuentes de datos

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();
}
