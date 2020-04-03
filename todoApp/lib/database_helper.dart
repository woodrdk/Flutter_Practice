import 'Note.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper{

  static DatabaseHelper _databaseHelper; // singleton
  static Database _database; // singleton

  String noteTable = 'note_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  String colPriority = 'priority';
  String colDate = 'date';

  DatabaseHelper._createInstance();
  
  factory DatabaseHelper(){
    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future <Database> get database async {
    if(_database == null){
      _database = await initializeDatabase();
    }
  }

  Future <Database> initializeDatabase()async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'notes.db';

    var notesDatabase= await openDatabase(
      path, version: 1, onCreate: _createDB
    );
    return notesDatabase;
  }


   void _createDB(Database db, int newVersion) async{
     await db.execute(
       'CREATE TABLE $noteTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colDescription TEXT, $colPriority INTEGER, $colDate TEXT)' );
       
   }

   Future <List<Map<String, dynamic>>> getNoteMapList() async{
     Database db = await this.database;
     var result = await db.query(noteTable, orderBy: '$colPriority ASC');
     return result;
   }
}