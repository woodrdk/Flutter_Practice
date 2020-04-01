import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // var myName = 'Rob';
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage diceimage2;
  AssetImage diceimage3;
  AssetImage diceimage4;
  AssetImage diceimage5;
  

  @override 
  void initState() { 
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = two;
      diceimage3 = three;
      diceimage4 = four;
      diceimage5 = five;
    });
  }

  void rollDice(){
  
    AssetImage newImage;
    AssetImage newImage2;
    AssetImage newImage3;
    AssetImage newImage4;
    AssetImage newImage5;
    var diceImages = [newImage, newImage2, newImage3, newImage4, newImage5 ];
    for(int i = 0; i < 5; i++){
       int random = (1 + Random().nextInt(6)); 
      switch (random) {
      case 1:
        diceImages[i] = one;
        break;
      case 2:
        diceImages[i] = two;
        break;
      case 3:
        diceImages[i] = three;
        break;
      case 4:
        diceImages[i] = four;
        break;
      case 5:
        diceImages[i] = five;
        break;
      case 6:
        diceImages[i] = six;
        break;
      }
    }
    setState(() {
      diceimage = diceImages[0];
      diceimage2 = diceImages[1];
      diceimage3 = diceImages[2];
      diceimage4 = diceImages[3];
      diceimage5 = diceImages[4];
    });
 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: <Widget>[
                Image(
                  image: diceimage,
                  width: 75.0,
                  height: 75.0,
                ),
                Image(
                  image: diceimage2,
                  width: 75.0,
                  height: 75.0,
                ),
                Image(
                  image: diceimage3,
                  width: 75.0,
                  height: 75.0,
                ),
                Image(
                  image: diceimage4,
                  width: 75.0,
                  height: 75.0,
                ),
                Image(
                  image: diceimage5,
                  width: 75.0,
                  height: 75.0,
                ),
              ]
              ),
              
              Container(
                margin: EdgeInsets.only(top: 25.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                
                  ),
                  
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Roll the dice!'),
                  onPressed: rollDice,
                ),                
              ),
            ],
          ),
        ),
      ),
    );
  }
}