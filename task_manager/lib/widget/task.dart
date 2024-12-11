import 'package:flutter/material.dart';
import 'package:task_manager/models/taskmo.dart';
class Task extends StatefulWidget {
  final Task taskmo;
  final VoidCallback deleteTask;
  final VoidCallback toggleTask;
  const Task({ Key ?key , required this.taskmo, required this.deleteTask, required this.toggleTask}) : super(key: key);

  

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello"),
    );
  }
}