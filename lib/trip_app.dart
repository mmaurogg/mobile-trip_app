import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trips.dart';
import 'Place/ui/screens/search_trips.dart';
import 'User/ui/screens/profile_trips.dart';


class TripApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _TripApp();
  }

}

class _TripApp extends State<TripApp>{

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    // llama toda la funcionaledad de stateWidget
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(

          showSelectedLabels: false,
          showUnselectedLabels: false,

          // esta funcion pasa automaticamente el index
          onTap: onTapTapped,
          currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "",
              ),
            ]
        ),
      ),
    );
  }

}