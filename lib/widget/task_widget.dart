import 'package:create_x/widget/tasks_tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/tasksData.dart';

import '../model/tasks.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTiles(
                isChecked: taskData.task[index].isDone,
                title: taskData.task[index].name,
                checkBoxCallback: (checkBoxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.taskCounter,
        );
      },
    );
  }
}
