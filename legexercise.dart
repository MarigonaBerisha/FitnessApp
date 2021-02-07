import 'package:flutter/material.dart';
import 'package:fitness_app/exercisedetails.dart';

class LegsExercises extends StatelessWidget {
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
                    _buildCardLegs('Barbell Hip Thrust', 'detail', 'assets/Barbell+Hip+Thrust.png', false, true, context),
                    _buildCardLegs('Stiff Leg Deadlifts', 'detail', 'assets/Stiff+Leg+Deadlifts.jpg', false, false, context),
                    _buildCardLegs('Sumo Deadlift', 'detail', 'assets/Sumo+Deadlift.jpg', false, false, context),
                    _buildCardLegs('Leg Press Machine', 'detail', 'assets/Calf+Press+on+Leg+Press+Machine.jpg', false, false, context),
                    _buildCardLegs('Lying Hamstring Curls', 'detail', 'assets/Lying+Hamstring+Curls.jpg', false, false, context),
                    _buildCardLegs('Seated Machine Squats', 'detail', 'assets/Seated+Machine+Squats.png', false, false, context)
                  ],

                ),
              )
            ]
        ),
      ),
    );
  }
}


Widget _buildCardLegs(String name, String detail, String imgPath, bool added, bool isFavorite, context) {
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
                            image: AssetImage(imgPath), fit: BoxFit.contain)
                    )
                )
            ),
            SizedBox(height: 10.0),
            Text(name,
              style: TextStyle(
                  fontFamily: 'Monoserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
              ),
            )
          ],
        ),
      ),
    ),
  );
}
