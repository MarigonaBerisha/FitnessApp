import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'nav.dart';
import 'training.dart';
import 'profile.dart';


void main() => runApp(MaterialApp(
  home: Login(),
  initialRoute: 'login',
  routes: {
    '/login': (context) => Login(),
    '/signup': (context) => Signup(),
    '/workout': (context) => Workout(),
    '/nav': (context) => Nav(),
    '/profile': (context) => Profile(),


  },
));

