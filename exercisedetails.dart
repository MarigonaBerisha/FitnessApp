import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final heroTag;
  final exerciseName;
  final exerciseDetail;

  ExerciseDetailsPage({this.heroTag, this.exerciseName, this.exerciseDetail});

  @override
  _ExerciseDetailsPageState createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 300.0,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(widget.heroTag,
                  fit: BoxFit.contain
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  SizedBox(height: 20.0),
                  ListTile(
                    title: Text(widget.exerciseName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Monoserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ListBody(
                      children: [
                        Text('The exercise helps build chest and abdominal muscles in addition to arm muscles',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Monoserrat',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.redAccent,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('Step by step Guide',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Monoserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),

                        SizedBox(height: 20.0),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Text('STEP 1. Take position on the ground with the hands forming a diamond-shape, '
                              'fingers facing forward and arms outstretched until the elbow joint is totally '
                              'opened lifting the torso up. You should be up on your toes and with your body flat,'
                              ' not arched either way. This is the starting position.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Monoserrat',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Text('STEP 2.  Lower your torso down as you inhale, keeping the elbows close by the body not '
                              'flaring them outward. Your chest should just touch the floor. ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Monoserrat',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Text('STEP 3.  Squeeze your chest and exhale as you reverse the movement back to the starting position.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Monoserrat',
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                      ]
                  ),
                ]
            ),

          ),
        ],
      ),

    );
  }
}




