import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';

class SubMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getSubMenu(),
      ),
    );
  }
}
