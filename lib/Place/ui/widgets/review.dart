import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage= "assets/img/people.png";
  String name = "Varina yasuo";
  String details = "1 review 5 photos";
  String comment = "ng lahat ng tao'y isinilang na malaya at pan";

  //constructor
  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment


      ],
    );



    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      //Definir alto y ancho d ela foto
      width: 80.0,
      height: 80.0,

      //Redondeamos el contenedor
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage( pathImage )
        )
      ),
    );




    return Row(
      children: <Widget> [
        photo,
        userDetails
      ],
    );
  }

}