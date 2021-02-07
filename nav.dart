import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
import 'training.dart';
import 'food.dart';


class Nav extends StatefulWidget {
  const Nav({Key key, this.user}) : super(key: key);
  final FirebaseUser user;


  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Workout(),
    Food(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              // ignore: deprecated_member_use
              title: Text('Workout'),
              backgroundColor: Colors.grey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_rounded),
              // ignore: deprecated_member_use
              title: Text('Food'),
              backgroundColor: Colors.grey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text('Profile'),
              backgroundColor: Colors.grey
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTap,

      ),
    );
  }
}