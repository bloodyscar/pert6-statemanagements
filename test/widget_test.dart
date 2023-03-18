// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pertemuan_6/main.dart';
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('https://reqres.in/api/users?page=2');
  var response = await http.get(url);
  var jsonDecode = json.decode(response.body);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  print('Response JSON: ${jsonDecode["page"]}');
}
