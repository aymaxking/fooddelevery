import 'package:flutter/material.dart';
import 'package:fooddelevery/components/search_box.dart';
import 'package:fooddelevery/screens/home/components/category_list.dart';
import 'package:fooddelevery/screens/home/components/discount_card.dart';
import 'package:fooddelevery/screens/home/components/type_list.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          TypeList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
