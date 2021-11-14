import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';
import 'package:fooddelevery/data.dart';

import 'type_item.dart';

class TypeList extends StatelessWidget {
  const TypeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getTypes(getCategory()[1]),
      ),
    );
  }
}
