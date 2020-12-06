import 'package:flutter/material.dart';
import 'constants.dart';


class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
                    child: Text(
                        'Training', style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),
            ),
                SizedBox(height: 30.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
               child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CategoryItem(
                      title: 'Beginner',
                      isActive: true,
                      press: () {},
                    ),
                    CategoryItem(
                      title: 'Skilled',
                      isActive: true,
                      press: () {},
                    ),
                    CategoryItem(
                      title: 'Advanced',
                      isActive: true,
                      press: () {},
                    ),

                  ],
                )
                ),

            Positioned(

               child: Column(
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(
                       bottom: 10,
                     ),
                     child: Text(
                       'ARMS & CHEST',
                     ),

                   )
                 ],
               ),
              ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
              ]
          ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    Key key,
    this.title,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
      child: Column(
        children: <Widget>[
          Text(title,
            style: isActive ?
            TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            )
                :TextStyle(fontSize: 12),
          ),
          if (isActive)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 3,
            width: 22,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
      )
    );
  }
}




