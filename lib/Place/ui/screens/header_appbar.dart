import 'package:flutter/material.dart';
import 'package:tripapp/widgets/gradient_back.dart';
import '../widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack("bienvenido", 250.0),
        CardImageList()
      ],
    );
  }

}