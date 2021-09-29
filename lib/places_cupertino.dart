import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/home.dart';
import 'package:flutter/profile_places.dart';
import 'package:flutter/search_places.dart';



class PlacesCupertino extend StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
         tabBar: CupertinoTabBar(
           backgroundColor: Colors.white.withAlpha(60),
           items: [
             BottomNavigationBarItem(
               icon: Icon(
                 Icons.home,
                 color: Color(0xFF574ACF),
               )
             ),
             BottomNavigationBarItem(
                 icon: Icon(
                   Icons.search,
                   color: Color(0xFF574ACF),
                 )
             ),
             BottomNavigationBarItem(
                 icon: Icon(
                   Icons.person,
                   color: Color(0xFF574ACF),
                 )
             )
           ],
       ),
        tabBuilder: (BuildContext context, int index){
           CupertinoTabView cupertinoTabView;

           switch(index){
             case 0:
               cupertinoTabView = CupertinoTabView(
                 builder: (BuildContext context) => MyHome(),
               );
               break;
             case 1:
               cupertinoTabView = CupertinoTabView(
                 builder: (BuildContext context) => SearchPlaces(),
               );
               break;
             case 2:
               cupertinoTabView = CupertinoTabView(
                 builder: (BuildContext context) => ProfilePlaces(),
               );
               break;
           }

           return cupertinoTabView;
        }
      ),
    );
    return places;
  }

}