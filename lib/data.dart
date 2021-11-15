
import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/screens/home/components/type_item.dart';
import 'package:fooddelevery/screens/menu/components/item.dart';
import 'package:fooddelevery/screens/places/components/place_item.dart';
import 'package:fooddelevery/screens/submenu/components/item2.dart';

List<CategoryItem> getCategory() {
  return <CategoryItem>[
    CategoryItem(
      title: "Meal",
      isActive: true,
      press: () {},
    ),
    CategoryItem(
      title: "Chicken",
      press: () {},
    ),
    CategoryItem(
      title: "Beverages",
      press: () {},
    ),
    CategoryItem(
      title: "Snacks & Sides",
      press: () {},
    ),
    CategoryItem(
      title: "Drinks",
      press: () {},
    )
  ];
}
List<TypeItem> getTypes(CategoryItem category) {
  return <TypeItem>[
    TypeItem(
      svgSrc: "assets/icons/burger_beer.svg",
      title: "Burger",
      category: getCategory()[1],
      press: () {},
    ),
    TypeItem(
      svgSrc: "assets/icons/chinese_noodles.svg",
      title: "Chinese & Noodles",
      category: getCategory()[1],
      press: () {},
    ),
    TypeItem(
      svgSrc: "assets/icons/chinese_noodles.svg",
      title: "Chinese & Noodles",
      category: getCategory()[1],
      press: () {},
    ),
    TypeItem(
      svgSrc: "assets/icons/chinese_noodles.svg",
      title: "Chinese & Noodles",
      category: getCategory()[1],
      press: () {},
    ),
    TypeItem(
      svgSrc: "assets/icons/chinese_noodles.svg",
      title: "Chinese & Noodles",
      category: getCategory()[1],
      press: () {},
    ),
    TypeItem(
      svgSrc: "assets/icons/burger_beer.svg",
      title: "Burger & Beer",
      category: getCategory()[2],
      press: () {},
    )
  ];
}
List<PlaceItem> getPlaces(TypeItem type) {
  return <PlaceItem>[
    PlaceItem(
      svgSrc: "assets/images/mcdonalds.png",
      title: "McDonalds",
  description:"Burgers - Fast Food",
  press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/kfc.png",
      title: "KFC",
      description:"Fried Chiken - Fast Food",
      press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/primos.png",
      title: "PRIMOS",
      description:"Sandwiches - Fast Food",
      press: () {},
    ),
    PlaceItem(
      svgSrc: "assets/images/burgerking.png",
      title: "Burger King",
      description:"Burgers - Fast Food",
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
List<SubMenuItem> getSubMenu() {
  return <SubMenuItem>[
    SubMenuItem(
      title: "BIG MAC",
      price: 13.15,
      img: "assets/images/bigmac.png",
      press: () {},
    ),
    SubMenuItem(
      title: "BIG TASTY",
      price: 18.15,
      img: "assets/images/bigtasty.png",
      press: () {},
    ),
    SubMenuItem(
      title: "BURGER",
      price: 20.00,
      img: "assets/images/Cheeseburger.png",
      press: () {},
    ),

  ];
}



