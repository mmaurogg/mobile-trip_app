import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool isPressed = false;

  void onPressedFav(){

    setState(() {
      isPressed = !this.isPressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregado a Favoritos"),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this.isPressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}