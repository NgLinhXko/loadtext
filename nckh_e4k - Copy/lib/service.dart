import 'dart:io';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:nckh_e4k/model/Data_e4k.dart';
import 'package:nckh_e4k/model/Data.dart';
import 'dart:async';
const SERVER_NAME = "192.168.0.114";
const BASEURL = "http://$SERVER_NAME:3000/20tu";
class Service {
  // static Future<List<Data>?> getData() async{
  //   var logger = Logger();
  //
  //   // print('check body ${post.toJson()}');
  //
  //   List<Data> ?data;
  //   try {
  //     Uri uri = Uri.parse("http://$SERVER_NAME:3000/user");
  //     final response = await http.get(Uri.parse(BASEURL));
  //     print('res ${response.body}');
  //     Map<String, dynamic> mapResponse = json.decode(response.body);
  //     DataDemo dataDemo1 = DataDemo.fromJson(mapResponse);
  //     data=dataDemo1.data;
  //     return data;
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  //
  // }
  static Future<DataE4k?> getData() async {
    DataE4k dataE4k;
    try {
      Uri uri = Uri.parse("http://$SERVER_NAME:3000/20tu");
      final response = await http.get(uri);
      print('res ${response.body}');
      Map<String, dynamic> mapResponse = json.decode(response.body);
      dataE4k = DataE4k.fromJson(mapResponse);
      return dataE4k;
    } catch (e) {
      print(e);
    }
  }
}