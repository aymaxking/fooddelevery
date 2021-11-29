import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/screens/home/components/fastfood_item.dart';
import 'package:fooddelevery/screens/home/components/type_item.dart';
import 'package:fooddelevery/screens/menu/components/item.dart';
import 'package:fooddelevery/screens/places/components/place_item.dart';
import 'package:fooddelevery/screens/submenu/components/item2.dart';
import 'package:http/http.dart' as http;


class Category {
  String title;
  List<Type> types;
  Category(this.title,this.types);
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      json['title'],
      json['types'],
    );
  }

  List<Category> parseCategorys(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Category>((json) =>Category.fromJson(json)).toList();
  }
  Future<List<Category>> fetchCategorys() async {
    final response = await http.get(Uri.parse("http://localhost:8080/categories"));
    if (response.statusCode == 200) {
      return parseCategorys(response.body);
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }


}

class Type {
  String title;
  String svgSrc;
  Category category;

  Type(this.title, this.svgSrc, this.category);

  factory Type.fromMap(Map<String, dynamic> json) {
    return Type(
      json['title'],
      "assets/icons/burger_beer.svg",
      null
    );
  }
}

class Place {
  String title;
  String svgSrc;
  String description;
  Type type;

  Place(this.title, this.svgSrc, this.description, this.type);

  factory Place.fromMap(Map<String, dynamic> json) {
    return Place(
        json['title'],
        "assets/icons/burger_beer.svg",
        json['description'],
        null
    );
  }
}

class Menu{
  String title;
  Place place;
  Menu(this.title,this.place);
}

class SubMenu{
  String title;
  double price;
  String img;
  SubMenu(this.title,this.price,this.img);
}

CategoryItem changeCategory(CategoryItem category){
  return category;
}
List<CategoryItem> getCategory(List<Category> list) {
  return
    <CategoryItem>[
    CategoryItem(
    ),
  ];
}


List<PlaceItem> getPlaces(TypeItem type) {
  return <PlaceItem>[
    PlaceItem(
      svgSrc: "assets/images/mcdonalds.png",
      title: "McDonalds",
      description: "Burgers - Fast Food",
      press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/kfc.png",
      title: "KFC",
      description: "Fried Chiken - Fast Food",
      press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/primos.png",
      title: "PRIMOS",
      description: "Sandwiches - Fast Food",
      press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/burgerking.png",
      title: "Burger King",
      description: "Burgers - Fast Food",
      press: () {},
    ),
  ];
}

List<MenuItem> getMenu() {
  return <MenuItem>[
    MenuItem(
      title: "Burgers",
      press: () {},
    ),
    MenuItem(
      title: "Drinks",
      press: () {},
    ),
    MenuItem(
      title: "IceCream",
      press: () {},
    ),
    MenuItem(
      title: "Soft Drinks",
      press: () {},
    ),
  ];
}



List<FastFoodItem> getFastFood() {
  return <FastFoodItem>[
    FastFoodItem(
      svgSrc: "assets/images/mcdonalds.png",
      title: "McDonalds",
      press: () {},
    ),
    FastFoodItem(
      svgSrc: "assets/images/kfc.png",
      title: "KFC",
      press: () {},
    ),
    FastFoodItem(
      svgSrc: "assets/images/primos.png",
      title: "PRIMOS",
      press: () {},
    ),
    FastFoodItem(
      svgSrc: "assets/images/burgerking.png",
      title: "Burger King",
      press: () {},
    ),
  ];

}





