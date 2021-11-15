import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/screens/menu/menu-screen.dart';
import 'package:fooddelevery/screens/places/places-screen.dart';
import 'package:fooddelevery/screens/submenu/submenu-screen.dart';

class FastFoodItem extends StatelessWidget {
  final String title, svgSrc;
  Function press;
  FastFoodItem({
    Key key,
    this.title,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    this.press=(){
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
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.18,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Text(title),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
