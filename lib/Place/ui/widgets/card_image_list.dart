import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  String pathImage = "assets/img/people.png";

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 330.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          //Acomodoar horizontalmente
          scrollDirection: Axis.horizontal,
          children: <Widget> [
            CardImage(pathImage),
            CardImage(pathImage),
            CardImage(pathImage),
            CardImage(pathImage),
            CardImage(pathImage),
          ],
        ),
    );
  }

}