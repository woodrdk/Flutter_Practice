import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // import images
  AssetImage circle = AssetImage("images/circle.png");
  AssetImage lucky = AssetImage("images/rupee.png");
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

  // define a getImage method
  AssetImage getImage(int index){
    String currentState = itemArray[index];
    switch (currentState) {
      case "lucky":
        return lucky;
        break;
      case "unlucky":
        return unlucky;
        break;
    }
    return circle;
  }

  // play game method
  playGame(int index){
    if(luckyNumber == index){
      setState(() {
        itemArray[index] = "lucky";
      });
    }
    else{
      setState(() {
          itemArray[index] = "unlucky";
      });
    }
  }

  // show all  
  showAll(){
    setState(() {
      itemArray = List<String>.filled(25, "unlucky");
      itemArray[luckyNumber] = "lucky";
    });
  }

  // reset game
  resetGame(){
    setState(() {
      itemArray = List<String>.filled(25, "empty");
    });
    generateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch and win"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: itemArray.length,
              itemBuilder: (context, i) => SizedBox(
                width: 50.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    this.playGame(i);
                  },
                  child: Image(
                    image: this.getImage(i),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child:  RaisedButton(
              onPressed: (){
                this.showAll();
              },
              color: Colors.lime,
              padding: EdgeInsets.all(20.0),
              child: Text('Show All',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ), 
              ),
            ),  
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child:  RaisedButton(
              onPressed: (){
                this.resetGame();
              },
              color: Colors.lime,
              padding: EdgeInsets.all(20.0),
              child: Text('Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),  
          ),
          
        ],
      ),
    );
  }
}