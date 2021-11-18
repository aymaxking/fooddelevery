import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';
import 'package:fooddelevery/screens/places/components/place_item.dart';

import '../../../HttpService.dart';

class PlaceList extends StatelessWidget {
  HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PlaceItem>>(
      future: httpService.getPlaces(),
      builder: (BuildContext ctx, AsyncSnapshot<List<PlaceItem>> snapshot) {
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
