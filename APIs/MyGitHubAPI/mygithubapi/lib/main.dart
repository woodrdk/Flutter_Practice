import 'package:flutter/material.dart';
import 'package:mygithubapi/HomePage..dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
       ),
       home: HomePage(title: 'Parse JSON data'),
    );
  }
}