
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
         this.gameState[index] = "Cross";
       } 
       else{
         this.gameState[index] = "Circle";
       }
       this.isCross = !this.isCross;
      this.checkWin();
      });
    }
  }


  // reset game method
  resetGame(){
    setState(() {
      this.gameState = [
        "empty","empty","empty","empty","empty","empty","empty","empty","empty",
      ];
      this.message = "";
    });
  }

  // get image method
  AssetImage getImage(String value){
    switch (value) {
      case ('empty'):
        return edit;
        break;
      case ('Cross'):
        return cross;
        break;
      case ('Circle'):
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0
                ),
                itemCount: this.gameState.length,
                itemBuilder: (context, i) => SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: MaterialButton(
                    onPressed: (){
                      playGame(i);
                    },
                    child: Image(
                      image: this.getImage(this.gameState[i]),
                    ),
                  ),
                ),
              ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(this.message,
            style: TextStyle(
              fontSize: 20.0, 
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.purple,
            minWidth: 300.0,
            height: 50.0,
            child: Text("Reset Game",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              this.resetGame();
            },
          ),
          Container(
            padding: EdgeInsets.all(20.0), 
            child: Text("Made by Rob",
            style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}