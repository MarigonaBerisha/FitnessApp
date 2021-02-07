import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final nameController;
  Profile({this.nameController});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.teal[100],
        body: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(210.0, 0.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'LOG OUT',
                          style: TextStyle(
                              color: Colors.grey[850],
                              letterSpacing: 1.0,
                              fontSize: 13.0
                          ),
                        ),
                        SizedBox(width: 5.0),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            icon: Icon(Icons.login_outlined,
                            )
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 40.0),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/Profile.jpg'),
                      radius: 70.0,
                    ),
                  ),
                  SizedBox(height: 40.0),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('NAME',
                       style: TextStyle(
                           color: Colors.grey[850],
                           letterSpacing: 2.0,
                           fontSize: 15.0
                       ),
                     ),
                     SizedBox(height: 5.0),
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black26,
                             blurRadius: 6,
                             offset: Offset(0,2)
                           )
                         ]
                       ),
                       child: TextField(
                         keyboardType: TextInputType.name,
                       ),
                     ),
                     SizedBox(height: 10.0),
                     Text('GENDER',
                       style: TextStyle(
                           color: Colors.grey[850],
                           letterSpacing: 2.0,
                           fontSize: 15.0
                       ),
                     ),
                     SizedBox(height: 5.0),
                     Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           boxShadow: [
                             BoxShadow(
                                 color: Colors.black26,
                                 blurRadius: 6,
                                 offset: Offset(0,2)
                             )
                           ]
                       ),
                       child: TextField(
                         keyboardType: TextInputType.name,
                       ),
                     ),
                     SizedBox(height: 35.0),
                     Row(
                       children: <Widget>[
                         Icon(
                           Icons.email,
                           color: Colors.black87,
                         ),
                         SizedBox(width: 20.0),
                         Text(
                           'fitnessapp@example.com',
                           style: TextStyle(
                               color: Colors.grey[850],
                               letterSpacing: 2.0,
                               fontSize: 19.0
                           ),
                         )
                   ],
                 )


                    ],
                  ),
              ]
              ),
    )
    );
  }
}