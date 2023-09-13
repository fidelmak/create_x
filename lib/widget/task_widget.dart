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
            final task = taskData.task[index];
            return TaskTiles(
              isChecked: task.isDone,
              title: task.name,
              checkBoxCallback: (checkBoxState) {
                taskData.updateTask(task);
              },
              onLongpressCalback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCounter,
        );
      },
    );
  }
}
