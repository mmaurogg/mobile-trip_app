import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {

  String buttonText = "Navigate";

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text("Navegando")
            )
          );
        },

      child: Container(
        // Margenes internas
        margin: const EdgeInsets.only(
          top:  30.0,
          left: 20.0,
          right: 20.0
        ),
        // Tamaño y dimensiones del boton
        height: 50.0,
        width: 180.0,
        //
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.deepPurple
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0,0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),

        // Texto del boton
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white,
            ),
          ),
        ),
      ),

    );
  }

}