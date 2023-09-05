import 'package:create_x/widget/tasks_tiles.dart';
import 'package:flutter/material.dart';

import '../model/tasks.dart';

class TaskWidget extends StatefulWidget {
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  List<Task> task = [
    Task(name: "sweep the floor"),
    Task(name: "code"),
    Task(name: "code"),
    Task(name: "code"),
    Task(name: "read book"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTiles(
            isChecked: task[index].isDone,
            title: task[index].name,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                task[index].toggleDone();
              });
            });
      },
      itemCount: task.length,
    );
  }
}
