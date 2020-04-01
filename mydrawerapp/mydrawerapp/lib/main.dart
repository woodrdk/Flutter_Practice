import 'package:flutter/material.dart';
import 'package:mydrawerapp/MyHomePage.dart';
import 'Cars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/cars" : (BuildContext context) => Cars(),
        "/home" : (BuildContext context) => MyHomePage(),
      },
    );
  }
}