import 'package:flutter/cupertino.dart';
import 'package:fooddelevery/components/search_box.dart';
import 'package:fooddelevery/screens/menu/components/list.dart';
import 'package:fooddelevery/screens/places/components/place_list.dart';

class MenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MenuList(),
        ],
      ),
    );
  }
}
