import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  final _Box = Hive.box('box');

  void createInitialData(){
    toDoList = [
      ["TODO Lista", false],
      ["100000", false],
    ];
  }
  void loadData(){
  toDoList = _Box.get("TODOLIST");
}

void updateDataBase(){
    _Box.put("TODOLIST", toDoList);
}
}