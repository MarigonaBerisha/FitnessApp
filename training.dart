import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'exercisedetails.dart';
import 'absexercise.dart';
import 'legexercise.dart';



class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training',
            style: TextStyle(
                fontFamily: 'Monoserrat'
            )),
        centerTitle: true,
        backgroundColor: Colors.teal[100],
      ),
      body: ListView(
          padding: EdgeInsets.only(top: 20.0, left: 20.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(right: 20.0),
                  unselectedLabelColor: Color(0xFFCDCDCD),
                  tabs: [
                    Tab(
                      child: Text(
                        'UPPER-BODY',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 21.0
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'ABS',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 21.0
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'LEGS&BUTT',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 21.0
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),


            Container(
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Exercises(),
                  AbsExercises() ,
                  LegsExercises()
                ],

              ),
            ),


          ]
      ),
    );
  }
}



class Exercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: ListView(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.only(right: 15.0),
                width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: true,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,

                  children: <Widget>[
                    _buildCard('Arm Dumbbell Pullover', 'This is first description', 'assets/Straight+Arm+Dumbbell+Pullover.png', false, true, context),
                    _buildCard('Diamond Push Ups', 'This is second description', 'assets/Diamond+Push+Ups.png', false, false, context),
                    _buildCard('Incline Dumbbell Rows', 'detail', 'assets/Incline+Dumbbell+Rows.jpg', false, false, context),
                    _buildCard('Dumbbell Chest Press', 'This is third description', 'assets/Flat+Dumbbell+Chest+Press.jpg', false, false, context),
                    _buildCard('Cable Row Machine', 'This is 4 description', 'assets/Seated+Cable+Row+Machine.jpg', false, false, context),
                    _buildCard('Pec Fly Machine', 'detail', 'assets/Seated+Pec+Fly+Machine.jpg', false, false, context)
                  ],

                ),
              )
            ]
        ),
      ),
    );
  }
}



Widget _buildCard(String name, String detail, String imgPath, bool added, bool isFavorite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ExerciseDetailsPage(heroTag: imgPath, exerciseName: name, exerciseDetail: detail)
        ));
      },

      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0
              )
            ],
            color: Colors.white
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  isFavorite ? Icon(Icons.favorite, color: Colors.red) :
                  Icon(Icons.favorite_border, color: Colors.red)
                ],
              ),
            ),
            Hero(tag: imgPath,
                child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath),
                            fit: BoxFit.contain)
                    )
                )
            ),
            SizedBox(height: 5.0),
            Text(name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Monoserrat',
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
