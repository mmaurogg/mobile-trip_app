import 'package:flutter/material.dart';
import 'package:tripapp/Place/ui/widgets/review_list.dart';

import '../widgets/description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  final String descriptionText = "Lorem ipsum dolor sit amet consectetur adipiscing elit, aliquam himenaeos hendrerit inceptos ligula molestie penatibus nibh, risus libero posuere sapien facilisis eget. Tellus purus commodo pretium ultricies imperdiet porta donec taciti, scelerisque at id dignissim neque aliquam morbi, dapibus diam tortor bibendum tempor vehicula pharetra. Dis vehicula commodo hac ad taciti fringilla velit fusce et litora, euismod urna volutpat congue aptent montes platea integer vestibulum quis, pretium ante quam neque senectus magnis molestie nullam sem.";

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        ListView(
          children:<Widget> [
            DescriptionPlace("Medellin", 5, descriptionText),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
  
}