import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';
import 'package:fooddelevery/screens/menu/menu-screen.dart';

class PlaceItem extends StatelessWidget {
  final String title, svgSrc, description;
  Function press;

  PlaceItem({
    Key key,
    this.title,
    this.svgSrc="assets/images/mcdonalds.png",
    this.press,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    this.press = () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MenuScreen();
          },
        ),
      );
    };

    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child:
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 40),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.18,
                    height: size.height * 0.1,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Container(
                  width:size.width* 0.5,
                  child: Column(
                    children: [
                      AutoSizeText(title,
                          style:
                          TextStyle(color: Colors.black, fontSize: 25)),
                      AutoSizeText(description,
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
