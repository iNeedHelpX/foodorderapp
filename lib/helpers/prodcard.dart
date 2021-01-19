import 'package:customerappdemo/helpers/colourconstants.dart';
import 'package:flutter/material.dart';

import 'colourconstants.dart';

class ProductCard extends StatelessWidget {
  int cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  ProductCard(
      this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: Color(cardColor),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey.withOpacity(.3),
          width: .2,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Image.asset(imgUrl, width: 281.0, height: 191.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: "Raleway",
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  disabledColor: goldColor,
                  icon: Icon(Icons.favorite),
                  color: wildPink,
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(
                      previousPrice,
                      style: TextStyle(
                        color: wildPink,
                        fontSize: 16.0,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  disabledColor: limeGreen,
                  icon: Icon(Icons.shopping_bag),
                  color: almostBlue,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
