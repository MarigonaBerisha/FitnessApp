import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FoodDetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodDetail;



  FoodDetailsPage({this.heroTag, this.foodName, this.foodDetail});

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
            style: TextStyle(
                fontFamily: 'Monoserrat', fontSize: 25.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      color: Colors.white
                  ),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                          image: AssetImage(widget.heroTag),
                          fit: BoxFit.cover
                      ),
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),
              Positioned(
                top: 280.0,
                left: 114.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                        style: TextStyle(
                            fontFamily: 'Monterrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                        )
                    ),

                  ],
                ),
              ),


              SizedBox(height: 15.0),

              Positioned(
                top: 330.0,
                left: 15.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodDetail,
                        style: TextStyle(
                            fontFamily: 'Monterrat',
                            fontSize: 20.0
                        )
                    ),
                    SizedBox(height: 30.0),

                             Text('Ingredients',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Monoserrat',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.redAccent,
                                fontSize: 20.0,
                              ),
                            ),

                ]
              ),

)
            ],
          ),
        ],
      ),
    );
  }
}


