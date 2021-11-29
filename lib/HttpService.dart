import 'dart:convert';

import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/screens/home/components/type_item.dart';
import 'package:fooddelevery/screens/menu/components/item.dart';
import 'package:fooddelevery/screens/places/components/place_item.dart';
import 'package:fooddelevery/screens/submenu/components/item2.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'data.dart';
import 'globals.dart' as globals;

class HttpService {
  final String baseURL = "http://10.0.2.2:8080";

  Future<List<CategoryItem>> getCategories() async {
    Response res = await get(Uri.parse(baseURL + "/categories"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<CategoryItem> items = new List<CategoryItem>();

      for (int i = 0; i < obj['_embedded']['categories'].length; i++) {
        CategoryItem item = new CategoryItem(
            title: obj['_embedded']['categories'][i]['title'].toString());
            types: obj['_embedded']['categories'][i]['types'];
    items.add(item);
      }
      return items;
    } else {
      print("fdadad");
      throw "Unable to retrieve stock data.";
    }
  }

  Future<List<TypeItem>> getTypes(CategoryItem categoryItem) async {
    Response res = await get(Uri.parse(baseURL + "/types"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<TypeItem> items = new List<TypeItem>();

      for (int i = 0; i < categoryItem.types.length; i++) {
        TypeItem item = new TypeItem(
            title: categoryItem.types[i].title,
        );
        items.add(item);
      }
      return items;
    } else {
      throw "Unable to retrieve stock data.";
    }
  }

  Future<List<PlaceItem>> getPlaces() async {
    Response res = await get(Uri.parse(baseURL + "/places"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<PlaceItem> items = new List<PlaceItem>();

      for (int i = 0; i < obj['_embedded']['places'].length; i++) {
        PlaceItem item = new PlaceItem(
            title: obj['_embedded']['places'][i]['title'].toString()
        ,description: obj['_embedded']['places'][i]['description'].toString(),);
        items.add(item);
      }
      return items;
    } else {
      throw "Unable to retrieve stock data.";
    }
  }

  Future<List<MenuItem>> getMenus() async {
    Response res = await get(Uri.parse(baseURL + "/menus"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<MenuItem> items = new List<MenuItem>();

      for (int i = 0; i < obj['_embedded']['menus'].length; i++) {
        MenuItem item = new MenuItem(
          title: obj['_embedded']['menus'][i]['title'].toString()
        );
        items.add(item);
      }
      return items;
    } else {
      throw "Unable to retrieve stock data.";
    }
  }

  Future<List<SubMenuItem>> getsSubMenus() async {
    Response res = await get(Uri.parse(baseURL + "/subMenus"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<SubMenuItem> items = new List<SubMenuItem>();

      for (int i = 0; i < obj['_embedded']['subMenus'].length; i++) {
        SubMenuItem item = new SubMenuItem(
            title: obj['_embedded']['subMenus'][i]['title'].toString(),
          price: obj['_embedded']['subMenus'][i]['price'].toString(),
        );
        items.add(item);
      }
      return items;
    } else {
      throw "Unable to retrieve stock data.";
    }
  }
}