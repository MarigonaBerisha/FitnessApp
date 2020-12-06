import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


  body: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 80.0, right: 20.0, left: 20.0),
      child: Column(
        children: [
          Text('Healthy Food',
          style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold,)
          )
        ],
      ),
    ),
  )
  );

  }
  }