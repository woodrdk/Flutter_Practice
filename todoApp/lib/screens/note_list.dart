import 'package:flutter/material.dart';
import 'dart:async';
import '../database_helper.dart';
import '../Note.dart';
import 'note_details.dart';
import 'package:sqflite/sqflite.dart';


class NoteList extends StatefulWidget {
  NoteList({Key key}) : super(key: key);

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('LCO ToDo'),
         backgroundColor: Colors.purple,
       ),
       body: Container(

       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.purple,
         child: Icon(Icons.add),
         onPressed: (){
           navigateToDetail(Note('', '', 2),'Add Note');
         },
       ),
    );
  }


  void navigateToDetail(Note note, String title) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
          return NoteDetail(note, title);
    }));

    if(result == true){
      updateListView()
    }
  }

  void updateListView(){

  }
}