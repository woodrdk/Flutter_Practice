
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


  // reset game method
  resetGame(){
    this.gameState = [
        "empty","empty","empty","empty","empty","empty","empty","empty","empty",
    ];
    this.message = "";
  }

  // get image method
  AssetImage getImage(String value){
    switch (value) {
      case ('empty'):
        return edit;
        break;
      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  //TODO: check for win logic
  
  
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}