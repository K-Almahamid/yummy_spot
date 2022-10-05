import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class BaseClientClass {
  static const int timeOutDuration = 35;

  //GET
  Future<dynamic> getData(String url) async {
    Uri uri = Uri.parse(url);
    try {
      Response response =
          await http.get(uri).timeout(const Duration(seconds: timeOutDuration));
      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //POST
  Future<dynamic> post(String url, dynamic bodyMap) async {
    Uri uri = Uri.parse(url);
    String body = jsonEncode(bodyMap);
    try {
      var response = await http
          .post(uri, body: body)
          .timeout(const Duration(seconds: timeOutDuration));

      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
