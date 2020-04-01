import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // import images
  AssetImage circle = AssetImage("images/circle.png");
  AssetImage lucky = AssetImage("images/rupeee.png");
  AssetImage unlucky = AssetImage("images/sadFace.png");

  // get an array
  List<String> itemArray;
  int luckyNumber;

  // initialize array with 25 elements
  @override
  void initState() {
    super.initState();
    itemArray = List<String>.generate(25, (index) => "empty");
    generateRandomNumber();
  }

  generateRandomNumber(){
    int random = Random().nextInt(25);
    // print(random); 
    setState(() {
        luckyNumber = random;
    });
  }

  //TODO: define a getImage method

  //TODO: play game method

  //TODO: show all  

  // reset game
  resetGame(){
    setState(() {
      itemArray = List<String>.filled(25, "empty");
    });
  }


  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}