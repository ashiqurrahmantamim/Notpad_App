import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqf_lite/model/todo_model.dart';
import 'package:sqflite/sqflite.dart';
class DataBaseHelper{

  static Database ? _database;

  Future<Database?> get db async{

    if(_database !=null){
      return _database;
    }
    _database= await initialDatabase();
    return _database;
  }
  initialDatabase()async{

    Directory dpath = await getApplicationDocumentsDirectory();
    String path =join(dpath.path,"todos.db");
    
    openDatabase(path,version: 1,onCreate:_onCreate);
  }
  _onCreate(Database db,int version){

    db.execute(
      '''
        CREATE TABLE todo(
          id INTEGER PRIMARY KEY,
          title TEXT,
          description TEXT,
          dateTime TEXT
        )
      '''
    );
  }
  Future addTodoMethod(TodoMoel todoMoel) async{

    Database ? database = await db;
    
    return await database!.insert("todos", todoMoel.toJson());
  }
   Future<List<TodoMoel>?> getTodoModel()async{
    Database ? database =await db;
     
     var data= await database?.query("todos",orderBy:"id" );
   }
}