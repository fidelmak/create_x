import 'package:create_x/widget/tasks_tiles.dart';
import 'package:flutter/material.dart';

import '../model/tasks.dart';

class TaskWidget extends StatefulWidget {
  final List<Task> tasks;

  TaskWidget({required this.tasks});
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTiles(
            isChecked: widget.tasks[index].isDone,
            title: widget.tasks[index].name,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
