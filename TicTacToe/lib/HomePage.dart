
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

  // play game method
  playGame(int index){
    if(this.gameState[index] == "empty"){
      setState(() {
       if(this.isCross){
         this.gameState[index] = "cross";
       } 
       else{
         this.gameState[index] = "circle";
       }
       this.isCross = !this.isCross;
      this.checkWin();
      });
    }
  }


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

  // check for win logic
  checkWin(){
    if((gameState[0] != 'empty') && 
       (gameState[0] == gameState[1]) &&
       (gameState[1] == gameState[2])
       ){
         setState(() {
           this.message = '${this.gameState[0]} Wins';
         });
       }
    else if((gameState[3] != 'empty') && 
            (gameState[3] == gameState[4]) &&
            (gameState[4] == gameState[5])){
       setState(() {
         this.message = '${this.gameState[3]} Wins';
       });
    }
    else if((gameState[6] != 'empty') && 
            (gameState[6] == gameState[7]) &&
            (gameState[7] == gameState[8])){
       setState(() {
         this.message = '${this.gameState[6]} Wins';
       });
    }
    else if((gameState[0] != 'empty') && 
            (gameState[0] == gameState[3]) &&
            (gameState[3] == gameState[6])){
       setState(() {
         this.message = '${this.gameState[0]} Wins';
       });
    }
    else if((gameState[1] != 'empty') && 
            (gameState[1] == gameState[4]) &&
            (gameState[4] == gameState[7])){
       setState(() {
         this.message = '${this.gameState[1]} Wins';
       });
    }
    else if((gameState[2] != 'empty') && 
            (gameState[2] == gameState[5]) &&
            (gameState[5] == gameState[8])){
       setState(() {
         this.message = '${this.gameState[2]} Wins';
       });
    }

    else if((gameState[0] != 'empty') && 
            (gameState[0] == gameState[4]) &&
            (gameState[4] == gameState[8])){
       setState(() {
         this.message = '${this.gameState[0]} Wins';
       });
    }
    else if((gameState[2] != 'empty') && 
            (gameState[2] == gameState[4]) &&
            (gameState[4] == gameState[6])){
       setState(() {
         this.message = '${this.gameState[2]} Wins';
       });
    }
    else if(!gameState.contains('empty')){
      setState(() {
        this.message = 'Game Draw';
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}