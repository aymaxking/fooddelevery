import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';

class SubMenuItem extends StatelessWidget {
  final title;
  String img;
  String price;
  Function press;

  SubMenuItem({
    Key key,
    this.title,
    this.price,
    this.img = "assets/images/bigmac.png",
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    this.press = () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return DetailsScreen();
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Image.asset(
                  img,
                  width: size.width * 0.35,
                  height: size.height * 0.15,
                  // size.width * 0.18 means it use 18% of total width
                )),
                Container(
                  width:size.width* 0.3,
                  child: AutoSizeText(title,
                       style: TextStyle(color: Colors.black, fontSize: 20)),),
                Container(
                    child: AutoSizeText(price.toString() + " DH",
                        style: TextStyle(color: Colors.black, fontSize: 20))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
