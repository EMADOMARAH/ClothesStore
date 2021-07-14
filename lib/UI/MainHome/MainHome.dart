import 'dart:io';

import 'package:flutter/material.dart';
import 'package:store/UI/MainHome/Screens/Categories.dart';
import 'package:store/UI/MainHome/Screens/Favorite.dart';
import 'package:store/UI/MainHome/Screens/Home.dart';
import 'package:store/UI/MainHome/Screens/MyBag.dart';
import 'package:store/UI/MainHome/Screens/MyProfile.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {

  int selectedIndex = 0;

  List<Widget> myWidgets=[
    HomeScreen(),
    CategoriesScreen(),
    MyBagScreen(),
    FavoritesScreen(),
    MyProfileScreen(),
  ];
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        backgroundColor: Color.fromRGBO(30, 31, 40, 1),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
        title: new Text(
          'Are you sure ?',
          style: TextStyle(
            color: Colors.white
          ),
           ),
        content: new Text(
            'Do you want to exit an App',
            style: TextStyle(
            color: Colors.white
        ),),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
                'No',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
          new FlatButton(
            onPressed: () => exit(0),
            child: new Text(
                'Yes',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: myWidgets[selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            ),
            child: ClipRRect(
//   borderRadius: BorderRadius.only(
//   topLeft: Radius.circular(25),
//   topRight: Radius.circular(25),
// ),

              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color.fromRGBO(30, 31, 40, 1),
                selectedItemColor: Colors.pink,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 15,
                unselectedFontSize: 14,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    title: Text('Home'),
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    title: Text('Shop'),
                    icon: Icon(Icons.shopping_cart),
                  ),
                  BottomNavigationBarItem(
                    title: Text('Bag'),
                    icon: Icon(Icons.work_outlined),
                  ),
                  BottomNavigationBarItem(
                    title: Text('Favorites'),
                    icon: Icon(Icons.favorite),
                  ),
                  BottomNavigationBarItem(
                    title: Text('Profile'),
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          )

      )
    );
  }
}
