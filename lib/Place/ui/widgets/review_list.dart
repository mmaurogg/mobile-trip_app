import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  String pathImage= "assets/img/people.png";
  String name = "Varina yasuo";
  String details = "1 review 5 photos";
  String comment = "ng lahat ng tao'y isinilang na malaya at pan";

@override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment)
      ],
    );
  }

}