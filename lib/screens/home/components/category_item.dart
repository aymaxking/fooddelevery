import 'package:flutter/material.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/globals.dart' as globals;
import 'package:fooddelevery/screens/home/components/type_item.dart';

import '../../../data.dart';


class CategoryItem extends StatelessWidget {
   String title;
   bool isActive;
   Function press;
   List<TypeItem> types;
   CategoryItem({
    this.title="",
    this.isActive = false,
    this.press,
     this.types
  });


  @override
  Widget build(BuildContext context) {
    this.press=(){
    };
    return GestureDetector(
      onTap: press(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(fontSize: 12),
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
              ),
          ],
        ),
      ),
    );
  }
}
