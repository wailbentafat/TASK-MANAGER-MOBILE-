import 'package:flutter/material.dart';
import 'package:task_manager/screens/taskscreen.dart';
import 'package:task_manager/models/taskmo.dart'; 


class TaskProvider extends ChangeNotifier {
  List<Taskmo> tasks = [];
  void addtask( String task){
   Taskmo taskmo =Taskmo(task: task , completed: false);
   tasks.add(taskmo);
   notifyListeners();
  }
  int get tasklength => tasks.length;
  int get completedtasks => tasks.where((element) => element.completed).length;
  void gettasks(){
    notifyListeners();
  }
  void deletetask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
  void completetask(int index){
    tasks[index]=tasks[index].copyWith(completed: !tasks[index].completed);
    notifyListeners();
  }

}

