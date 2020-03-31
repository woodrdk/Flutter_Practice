import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.limeAccent,
      accentColor: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('I am text line one'),
            Text('I am line two'),
            RaisedButton(
              onPressed: (){},
              child: Text('Signouts'),
              color: Colors.purple,
              splashColor: Colors.pink,
            ),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add_a_photo,
          color: Colors.green,

        ),
      ),
    ),
  );

  }
}