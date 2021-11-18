import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';
import 'package:fooddelevery/screens/submenu/components/item2.dart';

import '../../../HttpService.dart';

class SubMenuList extends StatelessWidget {
  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SubMenuItem>>(
      future: httpService.getsSubMenus(),
      builder: (BuildContext ctx, AsyncSnapshot<List<SubMenuItem>> snapshot) {
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
