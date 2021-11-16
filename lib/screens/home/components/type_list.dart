import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';
import 'package:fooddelevery/data.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';

import 'type_item.dart';

class TypeList extends StatelessWidget {
  CategoryItem category ;
   TypeList({
    this.category,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getTypes(this.category),
      ),
    );
  }
}
