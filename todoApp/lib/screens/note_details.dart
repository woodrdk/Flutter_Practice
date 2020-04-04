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
    @override
    Widget build(BuildContext context){

    }
  }