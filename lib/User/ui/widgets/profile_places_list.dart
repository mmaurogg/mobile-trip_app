import 'package:flutter/material.dart';
import 'package:tripapp/Place/model/place.dart';
import 'package:tripapp/User/model/user.dart';
import 'package:tripapp/User/ui/widgets/profile_place.dart';

class ProfilePlaceList extends StatelessWidget{

  User user = new User(uid: '1', name: 'Mao', photoURL: 'kkkk', email: 'assa@asasa.a');

  //Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = new Place(
      name: 'Knuckles Mountains Range',
      description: 'Hiking. Water fall hunting. Natural bath',
      uriImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Salto_del_Angel-Canaima-Venezuela19.JPG/800px-Salto_del_Angel-Canaima-Venezuela19.JPG',
      likes: 3
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),

      child: Column(
        children: <Widget> [
          //ProfilePlace('assets/img/river.jpeg', place),
          ProfilePlace('assets/img/mountain.jpeg', place2),
        ],
      ),
    );
  }

}