import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';
import 'package:fooddelevery/data.dart';

import '../../../constants.dart';
import 'type_item.dart';

class FastFoodList extends StatelessWidget {
  const FastFoodList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:          Text(
            "Popular",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ), ),

          Row(
            children: getFastFood(),
          ),
        ],
      )
    );
  }
}
