import 'package:flutter/material.dart';
import 'package:task_manager/models/taskmo.dart';
import 'package:task_manager/provider/task_provider.dart';
import 'package:provider/provider.dart';

class Task extends StatelessWidget {
  const Task({
    super.key,
    required this.taskmo,
    required this.index,
  });

  final int index;
  final Taskmo taskmo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1.0),
        gradient: LinearGradient(colors: [
          Colors.white,
          Color.fromARGB(2, 255, 248, 248),
        ])
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: taskmo.completed,
            onChanged: (value) {
              Provider.of<TaskProvider>(context, listen: false).completetask(index);
            },
          ),
          Text(
  taskmo.task,
  style: TextStyle(
    decoration: taskmo.completed ? TextDecoration.lineThrough : TextDecoration.none,
    color: taskmo.completed ? Colors.grey : Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

           
            
         
          IconButton(
            onPressed: () {
              if (taskmo.task.isNotEmpty) {
                Provider.of<TaskProvider>(context, listen: false).deletetask(index);
              }
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
