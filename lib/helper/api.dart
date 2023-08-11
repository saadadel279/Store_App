import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String Url,@required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(Url),headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'ther is a problem with statusCode ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String Url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(Url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, String> Data = jsonDecode(response.body);
      return Data;
    } else {
      throw Exception(
          'ther is a problem with statusCode ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String Url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

  headers.addAll({
    'Content-Type':'application/x-www-form-urlencoded'
  });
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('url = $Url body = $body token = $token ');
    http.Response response =
        await http.put(Uri.parse(Url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> Data = jsonDecode(response.body);
      print(Data);
      return Data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
