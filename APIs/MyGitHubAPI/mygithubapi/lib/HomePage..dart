import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  final String title;
  HomePage(
    {
      Key key, 
      @required
      this.title
    }
  ) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = "https://api.github.com/users";
  List date;
  var isLoading = false;

  
  @override
  void initState() { 
    super.initState();
    this.getjsondata();
  }

  Future<String> getjsondata() async {
      var response = await http.get(
        Uri.encodeFull(url),
      );
      print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       
    );
  }
}