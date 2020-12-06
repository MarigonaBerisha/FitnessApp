import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  void navigateToProfile(BuildContext context) {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 90.0, 0.0, 0.0),
                    child: Text(
                        'Sign Up', style: TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'NAME',
                      labelStyle: TextStyle(
                          fontFamily: 'Monoserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Monoserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        )
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Monoserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.only(left: 70.0, right: 70.0),
              height: 40.0,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/nav');
                },
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.grey,
                  color: Colors.deepOrangeAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.0),
            Container(
                padding: EdgeInsets.only(left: 70.0, right: 70.0),
                height: 40.0,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                )
                            ),
                          )
                        ],
                      )
                  ),
                )
            ),
          ]
      ),
    );
  }
}



