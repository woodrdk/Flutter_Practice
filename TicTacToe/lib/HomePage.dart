
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  // link up images
  AssetImage cross = AssetImage("images/cross.png");
  AssetImage circle = AssetImage("images/circle.png");
  AssetImage edit = AssetImage("images/edit.png");

  bool isCross = true;
  String message;
  List<String> gameState;

  // initialize the state of the box with empty
  @override
  void initState() {
    super.initState();
    setState(() {
      this.gameState = [
        "empty","empty","empty","empty","empty","empty","empty","empty","empty",
      ];
      this.message = "";
    });
  }

  //TODO: play game method


  //TODO: reset game method


  //TODO: get image method


  //TODO: check for win logic
  
  
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}