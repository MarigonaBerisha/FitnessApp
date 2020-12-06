import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0, right: 20.0, left: 20.0),
            child: Column(
              children: [
                Text("Name - Email",
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