import 'dart:convert';

import 'package:fooddelevery/screens/home/components/category_item.dart';
import 'package:fooddelevery/screens/home/components/type_item.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpService{
  final String baseURL = "http://10.0.2.2:8080";

  Future<List<CategoryItem>> getStocks() async {
    Response res = await get(Uri.parse(baseURL+"/categories"));
    if (res.statusCode == 200) {
      final obj = jsonDecode(res.body);
      List<CategoryItem> stocks =  new List<CategoryItem>();

      for (int i = 0; i < obj['_embedded']['categories'].length; i++) {
        CategoryItem stock = new CategoryItem(title: obj['_embedded']['categories'][i]['title'].toString());
        print(stock.title);
        stocks.add(stock);
      }
      return stocks;
    } else {
      print("fdadad");
      throw "Unable to retrieve stock data.";
    }
  }

}