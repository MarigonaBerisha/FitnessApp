import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fooddetails.dart';



class Food extends StatefulWidget {

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0.0),
              child: Text('Healthy Food',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Montserrat',)
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 185.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75.0))
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 300.0,
                      child: ListView(
                        children: [
                          _buildFoodItem('assets/proteinbanana.png', 'Healthy Breakfast', 'Ideas for healthy breakfast'),
                          _buildFoodItem('assets/meat.png', 'High Protein Food', 'Dishes with high protein'),
                          _buildFoodItem('assets/smothie.png', 'Protein Smoothies', 'Protein smoothies for gym'),
                          _buildFoodItem('assets/herbalifegym.png', ' Nutrition Food', ' Herbalife Nutriton')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ]
      ),

    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String detail) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => FoodDetailsPage(heroTag: imgPath, foodName: foodName, foodDetail: detail)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0,
                      )
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        detail,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward_ios_sharp),
                color: Colors.black,
                onPressed: () {

                }
            )
          ],
        ),
      ),
    );


  }
}