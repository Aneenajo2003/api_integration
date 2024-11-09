import 'dart:convert';

import 'package:api_integration/models/Products.dart';
import 'package:api_integration/models/ResponseMain.dart';
import 'package:http/http.dart' as http;

class Apiservice{
  Future<List<Products>?>fetchdata() async {
    final response=await http.get(Uri.parse('https://dummyjson.com/products'));
    var jsonn=jsonDecode(response.body);
    var data=ResponseMain.fromJson(jsonn);
    var list=data.products;
    return list;
  }
}
