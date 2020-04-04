import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Note.dart';
import '../database_helper.dart';
import 'package:intl/intl.dart';


class NoteDetail extends StatefulWidget{

  final String appBarTitle;
  final Note note;

  NoteDetail(this.note, this.appBarTitle);

  @override
  State<StatefulWidget> createState(){
    return NoteDetailState(this.note, this.appBarTitle);
  }


}

  class NoteDetailState extends State<NoteDetail>{
    static var _priority = ['High', 'Low'];
    DatabaseHelper helper = DatabaseHelper();
    String appBarTitle;
    Note note;

    NoteDetailState(this.note, this.appBarTitle);

    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    @override
    Widget build(BuildContext context){

    }

    void updateTitle(){
      note.title = titleController.text;
    }

    void updateDescription(){
      note.description = descriptionController.text;
    }

    void _showAlertDialog(String title, String message){
      AlertDialog alertDialog = AlertDialog(
        title: Text(title),
        content: Text(message),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }

    void _save() async{
      moveToLastScreen();

      note.date = DateFormat.yMMMd().format(DateTime.now());
      int result;
      if(note.id != null){
        result = await helper.updateNote(note);
      }
      else{
        result = await helper.insertNote(note);
      }


      if(result != 0){
        _showAlertDialog('Status', 'Note saved succesfully');
      }
      else{
        _showAlertDialog('Status', 'Problem saving note');
      }

    }

    void moveToLastScreen(){
      Navigator.pop(context, true);

    }

  }