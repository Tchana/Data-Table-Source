import 'dart:core';

import 'package:flutter/material.dart';
import 'package:paginated_data_table_tut/pdt_widget.dart';

import 'dts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Episode5();
  }
}

class User {
  String name;
  String phone;
  String email;
  String group;
  String address;

  User({this.name, this.phone, this.email, this.group, this.address});
}