import 'package:flutter/material.dart';
import 'package:tripapp/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  //Constructor
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  // este método construye el widge
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

        child: const Icon(
          Icons.star_half,
          color: Color(0xFFf2C611),
        )
    );

    final star_border = Container(
        margin: EdgeInsets.only(
            top: 323.0,
            right: 3.0
        ),

        child: const Icon(
          Icons.star_border,
          color: Color(0xFFf2C611),
        )
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      )
    );

    final title_starts = Row(
        // lo elementos que estaran en el renglon
        children: <Widget> [
          Container(
            margin: const EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
            ),

            child: Text(
              namePlace,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
              //Alineación del texto
              textAlign: TextAlign.left,
            ),
          ),

          Row(
            children: <Widget>[
              star,
              star,
              star,
              star_border,
              star_half
            ],
          )
        ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),

      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_starts,
        description,
        ButtonPurple("Navigate")
      ],
    );

  }
  
}