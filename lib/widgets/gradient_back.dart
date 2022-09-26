import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //va del tono mas claro al mas oscuro
            Colors.blueGrey,
            Colors.deepPurple
          ],
          // Define la orientacion del gradiente
          begin: FractionalOffset(0.2, 0.0),
          // que tan oscuro
          end: FractionalOffset(1.0, 0.6),
            // la orientacion
            stops: [0.0, 0.6],
            //Color de relleno si pasa algo con el gradiente
            tileMode: TileMode.clamp
        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily:  "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),

      //alienacion del texto respecto al contenedor (para que no esté a todo el borde)
      alignment: Alignment(-0.9, -0.6),
    );
  }
  
}