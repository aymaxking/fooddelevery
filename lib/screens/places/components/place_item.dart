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
    this.svgSrc,
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 60),
                  padding: EdgeInsets.all(5),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.18,
                    height: size.height * 0.1,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(title,
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 25)),
                      Text(description,
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
