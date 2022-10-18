import 'package:flutter/material.dart';
import 'package:tripapp/Place/model/place.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place>? myPlaces;
  final List<Place>? myFavoritePlaces;


  User({
    Key? key,
    required this.uid,
    required this.name,
    required this.photoURL,
    required this.email,

    this.myFavoritePlaces,
    this.myPlaces
  });

}