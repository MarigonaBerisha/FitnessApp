import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(60.0, 110.0, 0.0, 0.0),
                    child: Text(
                        'Welcome to', style: TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(12.0, 200.0, 0.0, 0.0),
                    child: Text(
                        'Fitness App', style: TextStyle(
                        fontSize: 50.0, fontWeight: FontWeight.bold,)
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
                          color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              alignment: Alignment(0.0, 2.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text('Forgot Password',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.only(left: 70.0, right: 70.0),
              height: 40.0,
              child: InkWell(
                onTap: () {},
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.blueGrey,
                  color: Colors.deepOrangeAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/nav');
                    },
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
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 0.0, 0.0),
              child: Text(
                  'Do not have an account yet? ', style: TextStyle(
                  fontSize: 15.0, fontWeight: FontWeight.bold)
              ),
            ),
            SizedBox(height: 15.0),
            Container(
                padding: EdgeInsets.only(left: 70.0, right: 70.0),
                height: 40.0,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
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
                            child: Text('SIGN UP',
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



