import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getCategory(),
      ),
    );
  }
}
