import 'package:flutter/material.dart';
import 'package:tripapp/User/ui/screens/profile_header.dart';
import 'package:tripapp/User/ui/widgets/profile_background.dart';
import 'package:tripapp/User/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        ProfileBackgound(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePlaceList()

          ],
        ),
      ],
    );
  }

}