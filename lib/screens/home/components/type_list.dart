import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/details/details-screen.dart';
import 'package:fooddelevery/data.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/globals.dart' as globals;

import '../../../HttpService.dart';
import 'type_item.dart';

class TypeList extends StatelessWidget {
  HttpService httpService = HttpService();

  // CategoryItem category ;
   TypeList({
    // this.category,
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TypeItem>>(
      future: httpService.getTypes(globals.currentCategory),
      builder: (BuildContext ctx, AsyncSnapshot<List<TypeItem>> snapshot) {
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
            scrollDirection: Axis.horizontal,child: Row
            (
              crossAxisAlignment: CrossAxisAlignment.start,children:snapshot.data)
            ,
          );
        }
      },
    );
  }

}

