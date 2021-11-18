import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/data.dart';
import 'package:http/http.dart' as http;

import '../../../HttpService.dart';

class CategoryList extends StatelessWidget {
  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryItem>>(
      future: httpService.getStocks(),
      builder: (BuildContext ctx, AsyncSnapshot<List<CategoryItem>> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            child: Center(
              // child: CircularProgressIndicator(),
              child: Text(
                snapshot.toString(),
              ),
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
