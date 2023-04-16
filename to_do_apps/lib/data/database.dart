import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List todoList = [];
  // reference the box
    final _myBox = Hive.box('myBox');

    void createInitialData(){
      todoList  =[
        ["Make tutorial" , false],
        ["Do exercise" , false],
      ];
    }

    void loadData(){
      todoList = _myBox.get("TODOLIST");
    }

    void updateDatabase(){
      _myBox.put("TODOLIST", todoList);
    }

}