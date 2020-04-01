import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.blue, "One"),
    NumberAudio("two.wav", Colors.yellow, "Two"),
    NumberAudio("three.wav", Colors.green, "Three"),
    NumberAudio("four.wav", Colors.yellow, "Four"),
    NumberAudio("five.wav", Colors.red, "Five"),
    NumberAudio("six.wav", Colors.orange, "Six"),
    NumberAudio("seven.wav", Colors.pink, "Seven"),
    NumberAudio("eight.wav", Colors.brown, "Eight"),
    NumberAudio("nine.wav", Colors.grey, "Nine"),
    NumberAudio("ten.wav", Colors.lightBlue, "Ten"),
  ];

  play(String uri){
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spanish numbers'
        ),
        
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(
                  "images/logo.png"
                  ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: RaisedButton(
                      color: numberList[i].buttonColor,
                      child: Text(
                        numberList[i].buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        play(numberList[i].audioUri);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
