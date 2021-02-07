import 'package:fitness_app/nav.dart';
import 'package:flutter/material.dart';
import 'auth.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  bool isHiddenPassword = true;

  void navigateToProfile(BuildContext context) {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      body: Form(
        key: _formKey,
        child: Column(
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
                    TextFormField(
                      controller: _nameController,
                      validator: (input) {
                        if (input.isEmpty) {
                          return 'Please enter your name';
                        } else
                          return null;
                      },

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
                    TextFormField(
                      controller: _emailController,
                      validator: (input) {
                        if (input.isEmpty) {
                          return 'Please type an email';
                        } else
                          return null;
                      },
             //         onSaved: (value) => _email = value,
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
                    TextFormField(
                      controller: _passwordController,
                      validator: (input) {
                        if (input.length < 6) {
                          return 'Password needs to have at least 6 chars';
                        } else
                          return null;
                      },
               //       onSaved: (input) => _password = input,

                      obscureText: isHiddenPassword,
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            Icons.visibility,
                          ),
                        ),
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

                     },
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.grey,
                    color: Colors.teal[100],
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                       if(_formKey.currentState.validate()){
                          createUser();
                        }
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
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  void createUser() async {
    dynamic result = await _auth.createNewUser(_emailController.text, _passwordController.text);
    if(result == null) {
      print('Email is not valid');
      Navigator.push(context, MaterialPageRoute(builder: (context) => Nav()));
    } else {
      print(result.toString());
    }
  }


}




