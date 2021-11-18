import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';
import 'package:fooddelevery/screens/menu/components/item.dart';

import '../../../HttpService.dart';

class MenuList extends StatelessWidget {
  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MenuItem>>(
      future: httpService.getMenus(),
      builder: (BuildContext ctx, AsyncSnapshot<List<MenuItem>> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        else {
          return SingleChildScrollView
            (
            scrollDirection: Axis.vertical,child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,children:snapshot.data)
            ,
          );
        }
      },
    );
  }

}
