import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Details App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SignUpPage(),
    );
  }
}