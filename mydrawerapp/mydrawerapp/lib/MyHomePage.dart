import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('My Drawer App'),
       ),
       drawer: Drawer(
         child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Rob"),
              accountEmail: Text("rdrwood@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('RW'),
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Cars"),
              trailing: Icon(Icons.train),
              onTap: () => Navigator.of(context).pushNamed("/cars"),
            ),
            ListTile(
              title: Text("Test"),
              trailing: Icon(Icons.mobile_screen_share),
              onTap: () => Navigator.of(context).pushNamed("/cars"),
            ),
            Divider(),
            ListTile(
              title: Text("Cars"),
              trailing: Icon(Icons.mood_bad),
              onTap: () => Navigator.of(context).pushNamed("/cars"),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],   
         ),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Home Page"),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.ac_unit),
         onPressed: (){},
         ),
    );
  }
}